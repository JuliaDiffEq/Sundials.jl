# This script is not an active part of the package.
# It uses Clang.jl package to parse Sundials C headers and generate
# Julia wrapper for Sundials API.
#
# To run the script from Julia console:
# include(joinpath(Pkg.dir("Sundials"), "src", "wrap_sundials.jl"));

using Clang
using Sundials32_jll
using SuiteSparse32_jll
using SuperLU_MT_jll

# `outpath` specifies, where the julian wrappers would be generated.
# If the generated .jl files are ok, they have to be copied to the "src" folder
# overwriting the old ones
const outpath = normpath(joinpath(dirname(@__FILE__), "../src/new_API"))
mkpath(outpath)

# Find all relevant Sundials headers
#const incpath = normpath(Sundials-5_jll.jl.artifact_dir, "include")
const incpath = joinpath(Sundials32_jll.artifact_dir, "include")
if !isdir(incpath)
    error("Sundials C headers not found.")
end

@info("Scanning Sundials headers in $incpath...")
const sundials_folders = filter!(isdir,
								 map(x->joinpath(incpath, x),
                                     ["arkode",
                                      "cvode",
                                      "cvodes",
                                      "ida",
                                      "idas",
                                      "kinsol",
                                      "nvector",
                                      "sundials",
                                      "sunlinsol",
                                      "sunmatrix",
                                      "sunnonlinsol"]))
const sundials_headers = similar(sundials_folders, 0)
for folder in sundials_folders
    @info("Processing $folder...")
	headers = [joinpath(folder, header) for header in readdir(folder) if endswith(header, ".h")]
    append!(sundials_headers, headers)
end

@show sundials_headers

const clang_includes = [CLANG_INCLUDE]
push!(sundials_headers, joinpath(SuiteSparse32_jll.artifact_dir, "include", "klu.h"))
push!(sundials_headers, joinpath(SuperLU_MT_jll.artifact_dir, "include", "colamd.h"))

# check_use_header(path) = true
# Callback to test if a header should actually be wrapped (for exclusion)
function wrap_header(top_hdr::AbstractString, cursor_header::AbstractString)
    !occursin(r"(_parallel|_impl)\.h$", cursor_header) &&  # don't wrap parallel and implementation definitions
    (top_hdr == cursor_header) # don't wrap if header is included from the other header (e.g. nvector in cvode or cvode_direct from cvode_band)
end

function wrap_cursor(name::AbstractString, cursor)
    if typeof(cursor) == Clang.CLFunctionDecl
        # only wrap API functions
        return occursin(r"^(CV|KIN|IDA|ARK|ERK|MRI|N_V|SUN)", name)
    else
        # skip problematic definitions
        return !occursin(r"^(ABS|SQRT|EXP)$", name)
    end
end

function julia_file(header::AbstractString)
    src_name = basename(dirname(header))
    if src_name == "sundials"
        src_name = "libsundials" # avoid having both Sundials.jl and sundials.jl
    end
    return joinpath(outpath, string(src_name, ".jl"))
end
function library_file(header::AbstractString)
    header_name = basename(header)
    if startswith(header_name, "nvector")
        return "libsundials_nvecserial"
    else
        return string("libsundials_", basename(dirname(header)))
    end
end

const context = init(
    common_file = joinpath(outpath, "types_and_consts.jl"),
    clang_args = [
        "-D", "__STDC_LIMIT_MACROS",
        "-D", "__STDC_CONSTANT_MACROS",
		"-I", find_std_headers()[1],
		"-I", find_std_headers()[2],
        #"-v"
    ],
    clang_diagnostics = true,
    clang_includes = [clang_includes; incpath],
    header_outputfile = julia_file,
    header_library = library_file,
    header_wrapped=wrap_header,
    cursor_wrapped=wrap_cursor
)
context.headers = sundials_headers

# 1st arg name to wrapped arg type map
const arg1_name2type = Dict(
    :arkode_mem => :(ARKStepMemPtr),
    :cvode_mem => :(CVODEMemPtr),
    :cv_mem => :(CVODEMemPtr),
    :kinmem => :(KINMemPtr),
    :kinmemm => :(KINMemPtr), # Sundials typo?
    :ida_mem => :(IDAMemPtr),
    :idaa_mem => :(IDAMemPtr), # Sundials typo?
    :idaadj_mem => :(IDAMemPtr), # Sundials typo?
)

const linear_solvers_and_matrices = [
    # Linear Solvers
    "band",
    "dense",
    "klu",
    "lapackend",
    "lapackdense",
    "pcg",
    "spbcgs",
    "spfgmr",
    "spgmr",
    "sptfqmr",
    "superlumt",
    # Matrices
    "sparse",
    #Non linear solvers
    "fixedpoint",
    "newton"
    ]

# substitute Ptr{Void} with the typed pointer
const ctor_return_type = Dict(
    "ARKCreate" => :(ARKStepMemPtr),
    "ARKStepCreate" => :(ARKStepMemPtr),
    "ERKStepCreate" => :(ERKStepMemPtr),
    "MRIStepCreate" => :(MRIStepMemPtr),
    "CVodeCreate" => :(CVODEMemPtr),
    "IDACreate" => :(IDAMemPtr),
    "KINCreate" => :(KINMemPtr)
)
# signatures for C function pointer types
const FnTypeSignatures = Dict(
    :ARKRhsFn => (:Cint, :((realtype, N_Vector, N_Vector, Ptr{Cvoid}))),
    :CVRhsFn => (:Cint, :((realtype, N_Vector, N_Vector, Ptr{Cvoid}))),
    :CVRootFn => (:Cint, :((realtype, N_Vector, Ptr{realtype}, Ptr{Cvoid}))),
    :IDAResFn => (:Cint, :((realtype, N_Vector, N_Vector, N_Vector, Ptr{Cvoid}))),
    :IDARootFn => (:Cint, :((realtype, N_Vector, N_Vector, Ptr{realtype}, Ptr{Cvoid}))),
    :KINSysFn => (:Cint, :((N_Vector, N_Vector, Ptr{Cvoid}))),
)

wrap_sundials_api(notexpr) = Any[notexpr]

function wrap_sundials_api(expr::Expr)
    if expr.head == :function &&
        expr.args[1].head == :call
        func_name = string(expr.args[1].args[1])
        convert_required = false
        if occursin(r"^(ARK|ERK|MRI|CV|KIN|IDA|SUN|N_V)", func_name)
	        @show func_name
            if occursin(r"Create$", func_name) && !occursin(r"Butcher", func_name)
                # create functions return typed pointers
		        @assert expr.args[2].args[1].args[3] == :(Ptr{Cvoid})
                expr.args[2].args[1].args[3] = ctor_return_type[func_name]
            elseif length(expr.args[1].args) > 1
		        arg1_type = expr.args[2].args[1].args[4].args[1]
                if arg1_type == :(Ptr{Cvoid}) || arg1_type == :(Ptr{Ptr{Cvoid}})
		            arg1_name = expr.args[1].args[2]
                    arg1_newtype = arg1_name2type[arg1_name]
                    if arg1_type == :(Ptr{Ptr{Cvoid}})
                        # adjust for void** type (for CVodeFree()-like funcs)
                        arg1_newtype = Expr(:curly, :Ref, arg1_newtype)
                    end
		             expr.args[2].args[1].args[4].args[1] = arg1_newtype
                    convert_required = true
                end
            end
            if occursin(r"UserDataB?$", func_name)
                # replace Ptr{Void} with Any to allow passing Julia objects through user data
                for (i, arg_expr) in enumerate(expr.args[2].args[1].args)
         	        if !(typeof(arg_expr)<:Symbol) && arg_expr.args[1] in values(ctor_return_type)
			            if arg_expr.args[2] == :(Ptr{Cvoid})
		                    arg_expr.args[2] = Any
		                elseif arg_expr.args[3] == :(Ptr{Cvoid})
		    	            arg_expr.args[3] = Any
		                end
			        end
                end
            end
            if !(typeof(expr)<:Symbol) && length(expr.args) > 1 && (expr.args[2].args[1].args[2].args[2] == :libsundials_sunlinsol || expr.args[2].args[1].args[2].args[2] == :libsundials_sunmatrix || expr.args[2].args[1].args[2].args[2] == :libsundials_sunnonlinsol)
                if func_name[1:6] == "SUNMAT"
                    expr.args[2].args[1].args[2].args[2] =
                    Symbol(string(expr.args[2].args[1].args[2].args[2])*
                    lowercase(split(func_name,"_")[end]))
                else
                    name_i = findfirst(lsmn -> occursin(lsmn, lowercase(func_name)),linear_solvers_and_matrices)

                    @assert name_i > 0
                    name = linear_solvers_and_matrices[name_i]
                    expr.args[2].args[1].args[2].args[2] = Symbol(string(expr.args[2].args[1].args[2].args[2])*name)
                end
            end
            # generate a higher-level wrapper that converts 1st arg to XXXMemPtr
            # and all other args from Julia objects to low-level C wrappers (e.g. NVector to N_Vector)
            # create wrapers for all arguments that need wrapping
            args_wrap_exprs = map(Base.Iterators.drop(expr.args[1].args, 1)) do expr
                # process each argument
                # return a tuple:
                #   1) high-level wrapper arg name expr
                #   2) expr for local var definition, nothing if not required
                #   3) expr for low-level wrapper call
                # if 1)==3), then no wrapping is required
                if typeof(expr) <: Symbol
			arg_name_expr = expr
			arg_type_expr = Any
		else
			arg_name_expr = expr.args[1]
                	arg_type_expr = expr.args[2]
		end
                if arg_type_expr == :N_Vector
                    # first convert argument to NVector() and store in local var,
                    # this guarantees that the wrapper and associated Sundials object (e.g. N_Vector)
                    # is not removed by GC
                    return (arg_name_expr,
                            Expr(:call, :convert, :NVector, arg_name_expr), # convert arg to NVector to store in a local var
                            Expr(:call, :convert, arg_type_expr, Symbol(string("__", arg_name_expr)))) # convert NVector to N_Vector
                elseif arg_type_expr == :Clong || arg_type_expr == :Cint ||
                    occursin(r"MemPtr$", string(arg_type_expr))
                    # convert(XXXMemPtr, mem), no local var required
                    return (arg_name_expr, nothing,
                            Expr(:call, :convert, arg_type_expr, arg_name_expr))
                elseif isa(arg_type_expr, Expr) && arg_type_expr.head == :curly &&
                    arg_type_expr.args[1] == :Ptr && arg_type_expr.args[2] != :FILE
                    # convert julia arrays to pointer, no local var required
                    # FIXME sometimes these arguments are not really arrays, but just a pointer to a var to be assigned
                    # by the function call. Does that make sense to detect such cases and assume that input arg is a reference to Julia var?
                    return (arg_name_expr, nothing,
                            Expr(:call, :pointer, arg_name_expr))
                elseif haskey(FnTypeSignatures, arg_type_expr) # wrap Julia function to C function using a defined signature
                    return (arg_name_expr, nothing,
                            Expr(:call, Symbol(string(arg_type_expr, "_wrapper")), arg_name_expr))
                else # any other case, no argument wrapping
                    return (arg_name_expr, nothing, arg_name_expr)
                end
            end
            # check which arguments are wrapped
            if any(map(arg_exprs -> arg_exprs[1] != arg_exprs[3], args_wrap_exprs))
                # mangle the name of the low-level wrapper to avoid recursion
                lowlevel_func_name = string("__", func_name)
                expr.args[1].args[1] = Symbol(lowlevel_func_name)

                # higher-level wrapper function
                wrapper_func_expr = Expr(:function,
                    # function declaration with argument types stripped, so it would accept any type
                    Expr(:call, Symbol(func_name), map(arg_exprs -> arg_exprs[1], args_wrap_exprs)...),
                    Expr(:block,
                    # local var defs
                    map(filter(arg_exprs -> arg_exprs[2] !== nothing, args_wrap_exprs)) do arg_exprs
                        Expr(:(=), Symbol("__", arg_exprs[1]), arg_exprs[2])
                    end...,
                    # low-level function call with Julia types converted to low-level arguments
                    Expr(:call, Symbol(lowlevel_func_name),
                         map(arg_exprs -> arg_exprs[3], args_wrap_exprs)...)
                    )
                )
                # write down both low-level and higher level wrappers
                return Any[expr, wrapper_func_expr]
            else
                return Any[expr]
            end
        end
    elseif expr.head == :typealias && haskey(FnTypeSignatures, expr.args[1])
        # C functional type, generate the wrapper from Julia to C function
        # dummy wrapper that accepts pointer
        fn_typename = expr.args[1]
        fn_rettype, fn_argtypes = FnTypeSignatures[fn_typename]
        wrapper_name = Symbol(string(string(fn_typename), "_wrapper"))
        c_wrapper_def = Expr(:(=),
                Expr(:call, wrapper_name, Expr(:(::), :fp, fn_typename)), :fp)
        jl_wrapper_def = Expr(:(=),
            Expr(:call, wrapper_name, :f),
            # function declaration with argument types stripped
            Expr(:call, :cfunction, :f, fn_rettype, fn_argtypes))
        return Any[expr, c_wrapper_def, jl_wrapper_def]
    elseif expr.head == :const && expr.args[1].head == :(=) &&
           isa(expr.args[1].args[2], Int)
        # fix integer constants should be Cint
        expr.args[1].args[2] = Expr(:call, :Cint, expr.args[1].args[2])
    end
    return Any[expr]
end

context.rewriter = function(exprs)
    mod_exprs = sizehint!(Vector{Any}(), length(exprs))
    for expr in exprs
        append!(mod_exprs, wrap_sundials_api(expr))
    end
    mod_exprs
end

@info("Generating .jl wrappers for Sundials in $outpath...")
run(context)
@info("Done generating .jl wrappers for Sundials in $outpath")
