__precompile__()

module Sundials

import Reexport
Reexport.@reexport using DiffEqBase
import DataStructures
import Logging
import DiffEqBase
import SparseArrays
import LinearAlgebra

import Libdl
import CEnum

## TODO: pending https://github.com/JuliaLang/julia/issues/29420
# this one is suggested in the issue, but it looks like time_t and tm are two different things?
# const Ctime_t = Base.Libc.TmStruct

const Ctm = Base.Libc.TmStruct
const Ctime_t = UInt
const Cclock_t = UInt
export Ctm, Ctime_t, Cclock_t

const warnkeywords = (
    :save_idxs,
    :d_discontinuities,
    :isoutofdomain,
    :unstable_check,
    :calck,
    :internalnorm,
    :gamma,
    :beta1,
    :beta2,
    :qmax,
    :qmin,
    :qoldinit,
)

function __init__()
    global warnlist = Set(warnkeywords)
    global warnida = union(warnlist, Set((:dtmin,)))
end

using Sundials32_jll

export solve,
    SundialsODEAlgorithm, SundialsDAEAlgorithm, ARKODE, CVODE_BDF, CVODE_Adams, IDA

# some definitions from the system C headers wrapped into the types_and_consts.jl
const DBL_MAX = prevfloat(Inf)
const DBL_MIN = nextfloat(-Inf)
const DBL_EPSILON = eps(Cdouble)

const FILE = Nothing
const __builtin_va_list = Ptr{Cvoid}

include("API/types_and_consts.jl")
include("types_and_consts_additions.jl")

include("handle.jl")
include("nvector_wrapper.jl")

include("API/nvector.jl")
include("API/libsundials.jl")
include("API/sunmatrix.jl")
include("API/sunlinsol.jl")
include("API/sunnonlinsol.jl")
include("API/cvodes.jl")
#include("API/cvode.jl")
include("API/arkode.jl")
include("API/idas.jl")
#include("API/ida.jl")
include("API/kinsol.jl")
# this must be the last one from the API folder!
include("API/api_overloads.jl")

include("simple.jl")
include("common_interface/function_types.jl")
include("common_interface/verbosity.jl")
include("common_interface/algorithms.jl")
include("common_interface/integrator_types.jl")
include("common_interface/integrator_utils.jl")
include("common_interface/solve.jl")

##################################################################
# Deprecations
##################################################################

end # module
