# Julia wrapper for header: sunnonlinsol_fixedpoint.h
# Automatically generated using Clang.jl


function SUNNonlinSol_FixedPoint(y, m)
    ccall((:SUNNonlinSol_FixedPoint, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver, (N_Vector, Cint), y, m)
end

function SUNNonlinSol_FixedPointSens(count, y, m)
    ccall((:SUNNonlinSol_FixedPointSens, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver, (Cint, N_Vector, Cint), count, y, m)
end

function SUNNonlinSolGetType_FixedPoint(NLS)
    ccall((:SUNNonlinSolGetType_FixedPoint, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize_FixedPoint(NLS)
    ccall((:SUNNonlinSolInitialize_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSolve_FixedPoint(NLS, y0, y, w, tol, callSetup, mem)
    ccall((:SUNNonlinSolSolve_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callSetup, mem)
end

function SUNNonlinSolFree_FixedPoint(NLS)
    ccall((:SUNNonlinSolFree_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn_FixedPoint(NLS, SysFn)
    ccall((:SUNNonlinSolSetSysFn_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetConvTestFn_FixedPoint(NLS, CTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters_FixedPoint(NLS, maxiters)
    ccall((:SUNNonlinSolSetMaxIters_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolSetDamping_FixedPoint(NLS, beta)
    ccall((:SUNNonlinSolSetDamping_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, realtype), NLS, beta)
end

function SUNNonlinSolGetNumIters_FixedPoint(NLS, niters)
    ccall((:SUNNonlinSolGetNumIters_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter_FixedPoint(NLS, iter)
    ccall((:SUNNonlinSolGetCurIter_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails_FixedPoint(NLS, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end

function SUNNonlinSolGetSysFn_FixedPoint(NLS, SysFn)
    ccall((:SUNNonlinSolGetSysFn_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{SUNNonlinSolSysFn}), NLS, SysFn)
end

function SUNNonlinSolSetInfoFile_FixedPoint(NLS, info_file)
    ccall((:SUNNonlinSolSetInfoFile_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{FILE}), NLS, info_file)
end

function SUNNonlinSolSetPrintLevel_FixedPoint(NLS, print_level)
    ccall((:SUNNonlinSolSetPrintLevel_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Cint), NLS, print_level)
end
# Julia wrapper for header: sunnonlinsol_newton.h
# Automatically generated using Clang.jl


function SUNNonlinSol_Newton(y)
    ccall((:SUNNonlinSol_Newton, libsundials_sunnonlinsolnewton), SUNNonlinearSolver, (N_Vector,), y)
end

function SUNNonlinSol_NewtonSens(count, y)
    ccall((:SUNNonlinSol_NewtonSens, libsundials_sunnonlinsolnewton), SUNNonlinearSolver, (Cint, N_Vector), count, y)
end

function SUNNonlinSolGetType_Newton(NLS)
    ccall((:SUNNonlinSolGetType_Newton, libsundials_sunnonlinsolnewton), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize_Newton(NLS)
    ccall((:SUNNonlinSolInitialize_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSolve_Newton(NLS, y0, y, w, tol, callLSetup, mem)
    ccall((:SUNNonlinSolSolve_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callLSetup, mem)
end

function SUNNonlinSolFree_Newton(NLS)
    ccall((:SUNNonlinSolFree_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn_Newton(NLS, SysFn)
    ccall((:SUNNonlinSolSetSysFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetLSetupFn_Newton(NLS, LSetupFn)
    ccall((:SUNNonlinSolSetLSetupFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolLSetupFn), NLS, LSetupFn)
end

function SUNNonlinSolSetLSolveFn_Newton(NLS, LSolveFn)
    ccall((:SUNNonlinSolSetLSolveFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolLSolveFn), NLS, LSolveFn)
end

function SUNNonlinSolSetConvTestFn_Newton(NLS, CTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters_Newton(NLS, maxiters)
    ccall((:SUNNonlinSolSetMaxIters_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolGetNumIters_Newton(NLS, niters)
    ccall((:SUNNonlinSolGetNumIters_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter_Newton(NLS, iter)
    ccall((:SUNNonlinSolGetCurIter_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails_Newton(NLS, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end

function SUNNonlinSolGetSysFn_Newton(NLS, SysFn)
    ccall((:SUNNonlinSolGetSysFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{SUNNonlinSolSysFn}), NLS, SysFn)
end

function SUNNonlinSolSetInfoFile_Newton(NLS, info_file)
    ccall((:SUNNonlinSolSetInfoFile_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{FILE}), NLS, info_file)
end

function SUNNonlinSolSetPrintLevel_Newton(NLS, print_level)
    ccall((:SUNNonlinSolSetPrintLevel_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Cint), NLS, print_level)
end
