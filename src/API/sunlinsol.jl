# Julia wrapper for header: sunlinsol_band.h
# Automatically generated using Clang.jl


function SUNLinSol_Band(y, A)
    ccall((:SUNLinSol_Band, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNBandLinearSolver(y, A)
    ccall((:SUNBandLinearSolver, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSolGetType_Band(S)
    ccall((:SUNLinSolGetType_Band, libsundials_sunlinsolband), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_Band(S)
    ccall((:SUNLinSolGetID_Band, libsundials_sunlinsolband), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Band(S)
    ccall((:SUNLinSolInitialize_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Band(S, A)
    ccall((:SUNLinSolSetup_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Band(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_Band(S)
    ccall((:SUNLinSolLastFlag_Band, libsundials_sunlinsolband), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Band(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Band(S)
    ccall((:SUNLinSolFree_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_dense.h
# Automatically generated using Clang.jl


function SUNLinSol_Dense(y, A)
    ccall((:SUNLinSol_Dense, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNDenseLinearSolver(y, A)
    ccall((:SUNDenseLinearSolver, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSolGetType_Dense(S)
    ccall((:SUNLinSolGetType_Dense, libsundials_sunlinsoldense), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_Dense(S)
    ccall((:SUNLinSolGetID_Dense, libsundials_sunlinsoldense), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Dense(S)
    ccall((:SUNLinSolInitialize_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Dense(S, A)
    ccall((:SUNLinSolSetup_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Dense(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_Dense(S)
    ccall((:SUNLinSolLastFlag_Dense, libsundials_sunlinsoldense), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Dense(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Dense(S)
    ccall((:SUNLinSolFree_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_klu.h
# Automatically generated using Clang.jl


function SUNLinSol_KLU(y, A)
    ccall((:SUNLinSol_KLU, libsundials_sunlinsolklu), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSol_KLUReInit(S, A, nnz, reinit_type)
    ccall((:SUNLinSol_KLUReInit, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, sunindextype, Cint), S, A, nnz, reinit_type)
end

function SUNLinSol_KLUSetOrdering(S, ordering_choice)
    ccall((:SUNLinSol_KLUSetOrdering, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNKLU(y, A)
    ccall((:SUNKLU, libsundials_sunlinsolklu), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNKLUReInit(S, A, nnz, reinit_type)
    ccall((:SUNKLUReInit, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, sunindextype, Cint), S, A, nnz, reinit_type)
end

function SUNKLUSetOrdering(S, ordering_choice)
    ccall((:SUNKLUSetOrdering, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNLinSol_KLUGetSymbolic(S)
    ccall((:SUNLinSol_KLUGetSymbolic, libsundials_sunlinsolklu), Ptr{klu_symbolic}, (SUNLinearSolver,), S)
end

function SUNLinSol_KLUGetNumeric(S)
    ccall((:SUNLinSol_KLUGetNumeric, libsundials_sunlinsolklu), Ptr{klu_numeric}, (SUNLinearSolver,), S)
end

function SUNLinSol_KLUGetCommon(S)
    ccall((:SUNLinSol_KLUGetCommon, libsundials_sunlinsolklu), Ptr{klu_common}, (SUNLinearSolver,), S)
end

function SUNLinSolGetType_KLU(S)
    ccall((:SUNLinSolGetType_KLU, libsundials_sunlinsolklu), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_KLU(S)
    ccall((:SUNLinSolGetID_KLU, libsundials_sunlinsolklu), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_KLU(S)
    ccall((:SUNLinSolInitialize_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_KLU(S, A)
    ccall((:SUNLinSolSetup_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_KLU(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_KLU(S)
    ccall((:SUNLinSolLastFlag_KLU, libsundials_sunlinsolklu), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_KLU(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_KLU(S)
    ccall((:SUNLinSolFree_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_lapackband.h
# Automatically generated using Clang.jl


function SUNLinSol_LapackBand(y, A)
    ccall((:SUNLinSol_LapackBand, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLapackBand(y, A)
    ccall((:SUNLapackBand, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSolGetType_LapackBand(S)
    ccall((:SUNLinSolGetType_LapackBand, libsundials_sunlinsolband), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_LapackBand(S)
    ccall((:SUNLinSolGetID_LapackBand, libsundials_sunlinsolband), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_LapackBand(S)
    ccall((:SUNLinSolInitialize_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_LapackBand(S, A)
    ccall((:SUNLinSolSetup_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_LapackBand(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_LapackBand(S)
    ccall((:SUNLinSolLastFlag_LapackBand, libsundials_sunlinsolband), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_LapackBand(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_LapackBand(S)
    ccall((:SUNLinSolFree_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_lapackdense.h
# Automatically generated using Clang.jl


function SUNLinSol_LapackDense(y, A)
    ccall((:SUNLinSol_LapackDense, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLapackDense(y, A)
    ccall((:SUNLapackDense, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSolGetType_LapackDense(S)
    ccall((:SUNLinSolGetType_LapackDense, libsundials_sunlinsoldense), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_LapackDense(S)
    ccall((:SUNLinSolGetID_LapackDense, libsundials_sunlinsoldense), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_LapackDense(S)
    ccall((:SUNLinSolInitialize_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_LapackDense(S, A)
    ccall((:SUNLinSolSetup_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_LapackDense(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_LapackDense(S)
    ccall((:SUNLinSolLastFlag_LapackDense, libsundials_sunlinsoldense), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_LapackDense(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_LapackDense(S)
    ccall((:SUNLinSolFree_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_pcg.h
# Automatically generated using Clang.jl


function SUNLinSol_PCG(y, pretype, maxl)
    ccall((:SUNLinSol_PCG, libsundials_sunlinsolpcg), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_PCGSetPrecType(S, pretype)
    ccall((:SUNLinSol_PCGSetPrecType, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_PCGSetMaxl(S, maxl)
    ccall((:SUNLinSol_PCGSetMaxl, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNPCG(y, pretype, maxl)
    ccall((:SUNPCG, libsundials_sunlinsolpcg), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNPCGSetPrecType(S, pretype)
    ccall((:SUNPCGSetPrecType, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNPCGSetMaxl(S, maxl)
    ccall((:SUNPCGSetMaxl, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_PCG(S)
    ccall((:SUNLinSolGetType_PCG, libsundials_sunlinsolpcg), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_PCG(S)
    ccall((:SUNLinSolGetID_PCG, libsundials_sunlinsolpcg), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_PCG(S)
    ccall((:SUNLinSolInitialize_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_PCG(S, A_data, ATimes)
    ccall((:SUNLinSolSetATimes_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_PCG(S, P_data, Pset, Psol)
    ccall((:SUNLinSolSetPreconditioner_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_PCG(S, s, nul)
    ccall((:SUNLinSolSetScalingVectors_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s, nul)
end

function SUNLinSolSetup_PCG(S, nul)
    ccall((:SUNLinSolSetup_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, SUNMatrix), S, nul)
end

function SUNLinSolSolve_PCG(S, nul, x, b, tol)
    ccall((:SUNLinSolSolve_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, nul, x, b, tol)
end

function SUNLinSolNumIters_PCG(S)
    ccall((:SUNLinSolNumIters_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_PCG(S)
    ccall((:SUNLinSolResNorm_PCG, libsundials_sunlinsolpcg), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_PCG(S)
    ccall((:SUNLinSolResid_PCG, libsundials_sunlinsolpcg), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_PCG(S)
    ccall((:SUNLinSolLastFlag_PCG, libsundials_sunlinsolpcg), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_PCG(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_PCG(S)
    ccall((:SUNLinSolFree_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_PCG(LS, info_file)
    ccall((:SUNLinSolSetInfoFile_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_PCG(LS, print_level)
    ccall((:SUNLinSolSetPrintLevel_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), LS, print_level)
end
# Julia wrapper for header: sunlinsol_spbcgs.h
# Automatically generated using Clang.jl


function SUNLinSol_SPBCGS(y, pretype, maxl)
    ccall((:SUNLinSol_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPBCGSSetPrecType(S, pretype)
    ccall((:SUNLinSol_SPBCGSSetPrecType, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPBCGSSetMaxl(S, maxl)
    ccall((:SUNLinSol_SPBCGSSetMaxl, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNSPBCGS(y, pretype, maxl)
    ccall((:SUNSPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPBCGSSetPrecType(S, pretype)
    ccall((:SUNSPBCGSSetPrecType, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPBCGSSetMaxl(S, maxl)
    ccall((:SUNSPBCGSSetMaxl, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_SPBCGS(S)
    ccall((:SUNLinSolGetType_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPBCGS(S)
    ccall((:SUNLinSolGetID_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPBCGS(S)
    ccall((:SUNLinSolInitialize_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPBCGS(S, A_data, ATimes)
    ccall((:SUNLinSolSetATimes_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPBCGS(S, P_data, Pset, Psol)
    ccall((:SUNLinSolSetPreconditioner_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPBCGS(S, s1, s2)
    ccall((:SUNLinSolSetScalingVectors_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPBCGS(S, A)
    ccall((:SUNLinSolSetup_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPBCGS(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPBCGS(S)
    ccall((:SUNLinSolNumIters_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPBCGS(S)
    ccall((:SUNLinSolResNorm_SPBCGS, libsundials_sunlinsolspbcgs), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPBCGS(S)
    ccall((:SUNLinSolResid_SPBCGS, libsundials_sunlinsolspbcgs), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPBCGS(S)
    ccall((:SUNLinSolLastFlag_SPBCGS, libsundials_sunlinsolspbcgs), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPBCGS(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPBCGS(S)
    ccall((:SUNLinSolFree_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPBCGS(S, info_file)
    ccall((:SUNLinSolSetInfoFile_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{FILE}), S, info_file)
end

function SUNLinSolSetPrintLevel_SPBCGS(S, print_level)
    ccall((:SUNLinSolSetPrintLevel_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, print_level)
end
# Julia wrapper for header: sunlinsol_spfgmr.h
# Automatically generated using Clang.jl


function SUNLinSol_SPFGMR(y, pretype, maxl)
    ccall((:SUNLinSol_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPFGMRSetPrecType(S, pretype)
    ccall((:SUNLinSol_SPFGMRSetPrecType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPFGMRSetGSType(S, gstype)
    ccall((:SUNLinSol_SPFGMRSetGSType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNLinSol_SPFGMRSetMaxRestarts(S, maxrs)
    ccall((:SUNLinSol_SPFGMRSetMaxRestarts, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNSPFGMR(y, pretype, maxl)
    ccall((:SUNSPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPFGMRSetPrecType(S, pretype)
    ccall((:SUNSPFGMRSetPrecType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPFGMRSetGSType(S, gstype)
    ccall((:SUNSPFGMRSetGSType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPFGMRSetMaxRestarts(S, maxrs)
    ccall((:SUNSPFGMRSetMaxRestarts, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSolGetType_SPFGMR(S)
    ccall((:SUNLinSolGetType_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPFGMR(S)
    ccall((:SUNLinSolGetID_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPFGMR(S)
    ccall((:SUNLinSolInitialize_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPFGMR(S, A_data, ATimes)
    ccall((:SUNLinSolSetATimes_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPFGMR(S, P_data, Pset, Psol)
    ccall((:SUNLinSolSetPreconditioner_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPFGMR(S, s1, s2)
    ccall((:SUNLinSolSetScalingVectors_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPFGMR(S, A)
    ccall((:SUNLinSolSetup_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPFGMR(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPFGMR(S)
    ccall((:SUNLinSolNumIters_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPFGMR(S)
    ccall((:SUNLinSolResNorm_SPFGMR, libsundials_sunlinsolspfgmr), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPFGMR(S)
    ccall((:SUNLinSolResid_SPFGMR, libsundials_sunlinsolspfgmr), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPFGMR(S)
    ccall((:SUNLinSolLastFlag_SPFGMR, libsundials_sunlinsolspfgmr), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPFGMR(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPFGMR(S)
    ccall((:SUNLinSolFree_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPFGMR(LS, info_file)
    ccall((:SUNLinSolSetInfoFile_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_SPFGMR(LS, print_level)
    ccall((:SUNLinSolSetPrintLevel_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), LS, print_level)
end
# Julia wrapper for header: sunlinsol_spgmr.h
# Automatically generated using Clang.jl


function SUNLinSol_SPGMR(y, pretype, maxl)
    ccall((:SUNLinSol_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPGMRSetPrecType(S, pretype)
    ccall((:SUNLinSol_SPGMRSetPrecType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPGMRSetGSType(S, gstype)
    ccall((:SUNLinSol_SPGMRSetGSType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNLinSol_SPGMRSetMaxRestarts(S, maxrs)
    ccall((:SUNLinSol_SPGMRSetMaxRestarts, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNSPGMR(y, pretype, maxl)
    ccall((:SUNSPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPGMRSetPrecType(S, pretype)
    ccall((:SUNSPGMRSetPrecType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPGMRSetGSType(S, gstype)
    ccall((:SUNSPGMRSetGSType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPGMRSetMaxRestarts(S, maxrs)
    ccall((:SUNSPGMRSetMaxRestarts, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSolGetType_SPGMR(S)
    ccall((:SUNLinSolGetType_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPGMR(S)
    ccall((:SUNLinSolGetID_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPGMR(S)
    ccall((:SUNLinSolInitialize_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPGMR(S, A_data, ATimes)
    ccall((:SUNLinSolSetATimes_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPGMR(S, P_data, Pset, Psol)
    ccall((:SUNLinSolSetPreconditioner_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPGMR(S, s1, s2)
    ccall((:SUNLinSolSetScalingVectors_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPGMR(S, A)
    ccall((:SUNLinSolSetup_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPGMR(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPGMR(S)
    ccall((:SUNLinSolNumIters_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPGMR(S)
    ccall((:SUNLinSolResNorm_SPGMR, libsundials_sunlinsolspgmr), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPGMR(S)
    ccall((:SUNLinSolResid_SPGMR, libsundials_sunlinsolspgmr), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPGMR(S)
    ccall((:SUNLinSolLastFlag_SPGMR, libsundials_sunlinsolspgmr), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPGMR(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPGMR(S)
    ccall((:SUNLinSolFree_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPGMR(LS, info_file)
    ccall((:SUNLinSolSetInfoFile_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_SPGMR(LS, print_level)
    ccall((:SUNLinSolSetPrintLevel_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), LS, print_level)
end
# Julia wrapper for header: sunlinsol_sptfqmr.h
# Automatically generated using Clang.jl


function SUNLinSol_SPTFQMR(y, pretype, maxl)
    ccall((:SUNLinSol_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPTFQMRSetPrecType(S, pretype)
    ccall((:SUNLinSol_SPTFQMRSetPrecType, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPTFQMRSetMaxl(S, maxl)
    ccall((:SUNLinSol_SPTFQMRSetMaxl, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNSPTFQMR(y, pretype, maxl)
    ccall((:SUNSPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPTFQMRSetPrecType(S, pretype)
    ccall((:SUNSPTFQMRSetPrecType, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPTFQMRSetMaxl(S, maxl)
    ccall((:SUNSPTFQMRSetMaxl, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_SPTFQMR(S)
    ccall((:SUNLinSolGetType_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPTFQMR(S)
    ccall((:SUNLinSolGetID_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPTFQMR(S)
    ccall((:SUNLinSolInitialize_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPTFQMR(S, A_data, ATimes)
    ccall((:SUNLinSolSetATimes_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPTFQMR(S, P_data, Pset, Psol)
    ccall((:SUNLinSolSetPreconditioner_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPTFQMR(S, s1, s2)
    ccall((:SUNLinSolSetScalingVectors_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPTFQMR(S, A)
    ccall((:SUNLinSolSetup_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPTFQMR(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPTFQMR(S)
    ccall((:SUNLinSolNumIters_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPTFQMR(S)
    ccall((:SUNLinSolResNorm_SPTFQMR, libsundials_sunlinsolsptfqmr), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPTFQMR(S)
    ccall((:SUNLinSolResid_SPTFQMR, libsundials_sunlinsolsptfqmr), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPTFQMR(S)
    ccall((:SUNLinSolLastFlag_SPTFQMR, libsundials_sunlinsolsptfqmr), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPTFQMR(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPTFQMR(S)
    ccall((:SUNLinSolFree_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPTFQMR(LS, info_file)
    ccall((:SUNLinSolSetInfoFile_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_SPTFQMR(LS, print_level)
    ccall((:SUNLinSolSetPrintLevel_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), LS, print_level)
end
# Julia wrapper for header: sunlinsol_superlumt.h
# Automatically generated using Clang.jl


function SUNLinSol_SuperLUMT(y, A, num_threads)
    ccall((:SUNLinSol_SuperLUMT, libsundials_sunlinsolsuperlumt), SUNLinearSolver, (N_Vector, SUNMatrix, Cint), y, A, num_threads)
end

function SUNLinSol_SuperLUMTSetOrdering(S, ordering_choice)
    ccall((:SUNLinSol_SuperLUMTSetOrdering, libsundials_sunlinsolsuperlumt), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNSuperLUMT(y, A, num_threads)
    ccall((:SUNSuperLUMT, libsundials_sunlinsolsuperlumt), SUNLinearSolver, (N_Vector, SUNMatrix, Cint), y, A, num_threads)
end

function SUNSuperLUMTSetOrdering(S, ordering_choice)
    ccall((:SUNSuperLUMTSetOrdering, libsundials_sunlinsolsuperlumt), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNLinSolGetType_SuperLUMT(S)
    ccall((:SUNLinSolGetType_SuperLUMT, libsundials_sunlinsolsuperlumt), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SuperLUMT(S)
    ccall((:SUNLinSolGetID_SuperLUMT, libsundials_sunlinsolsuperlumt), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SuperLUMT(S)
    ccall((:SUNLinSolInitialize_SuperLUMT, libsundials_sunlinsolsuperlumt), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_SuperLUMT(S, A)
    ccall((:SUNLinSolSetup_SuperLUMT, libsundials_sunlinsolsuperlumt), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SuperLUMT(S, A, x, b, tol)
    ccall((:SUNLinSolSolve_SuperLUMT, libsundials_sunlinsolsuperlumt), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_SuperLUMT(S)
    ccall((:SUNLinSolLastFlag_SuperLUMT, libsundials_sunlinsolsuperlumt), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SuperLUMT(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SuperLUMT, libsundials_sunlinsolsuperlumt), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SuperLUMT(S)
    ccall((:SUNLinSolFree_SuperLUMT, libsundials_sunlinsolsuperlumt), Cint, (SUNLinearSolver,), S)
end
