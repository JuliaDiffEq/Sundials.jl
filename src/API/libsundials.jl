# Julia wrapper for header: sundials_band.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_config.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_dense.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_direct.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_fconfig.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_fnvector.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_futils.h
# Automatically generated using Clang.jl


function SUNDIALSFileOpen(filename, modes)
    ccall((:SUNDIALSFileOpen, libsundials_sundials), Ptr{FILE}, (Cstring, Cstring), filename, modes)
end

function SUNDIALSFileClose(fp)
    ccall((:SUNDIALSFileClose, libsundials_sundials), Cvoid, (Ptr{FILE},), fp)
end
# Julia wrapper for header: sundials_iterative.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_lapack.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_linearsolver.h
# Automatically generated using Clang.jl


function SUNLinSolNewEmpty()
    ccall((:SUNLinSolNewEmpty, libsundials_sundials), SUNLinearSolver, ())
end

function SUNLinSolFreeEmpty(S)
    ccall((:SUNLinSolFreeEmpty, libsundials_sundials), Cvoid, (SUNLinearSolver,), S)
end

function SUNLinSolGetType(S)
    ccall((:SUNLinSolGetType, libsundials_sundials), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID(S)
    ccall((:SUNLinSolGetID, libsundials_sundials), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes(S, A_data, ATimes)
    ccall((:SUNLinSolSetATimes, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner(S, P_data, Pset, Psol)
    ccall((:SUNLinSolSetPreconditioner, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors(S, s1, s2)
    ccall((:SUNLinSolSetScalingVectors, libsundials_sundials), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolInitialize(S)
    ccall((:SUNLinSolInitialize, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup(S, A)
    ccall((:SUNLinSolSetup, libsundials_sundials), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve(S, A, x, b, tol)
    ccall((:SUNLinSolSolve, libsundials_sundials), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters(S)
    ccall((:SUNLinSolNumIters, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm(S)
    ccall((:SUNLinSolResNorm, libsundials_sundials), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid(S)
    ccall((:SUNLinSolResid, libsundials_sundials), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag(S)
    ccall((:SUNLinSolLastFlag, libsundials_sundials), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace(S, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree(S)
    ccall((:SUNLinSolFree, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sundials_math.h
# Automatically generated using Clang.jl


function SUNRpowerI(base, exponent)
    ccall((:SUNRpowerI, libsundials_sundials), realtype, (realtype, Cint), base, exponent)
end

function SUNRpowerR(base, exponent)
    ccall((:SUNRpowerR, libsundials_sundials), realtype, (realtype, realtype), base, exponent)
end
# Julia wrapper for header: sundials_matrix.h
# Automatically generated using Clang.jl


function SUNMatNewEmpty()
    ccall((:SUNMatNewEmpty, libsundials_sundials), SUNMatrix, ())
end

function SUNMatFreeEmpty(A)
    ccall((:SUNMatFreeEmpty, libsundials_sundials), Cvoid, (SUNMatrix,), A)
end

function SUNMatCopyOps(A, B)
    ccall((:SUNMatCopyOps, libsundials_sundials), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatGetID(A)
    ccall((:SUNMatGetID, libsundials_sundials), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone(A)
    ccall((:SUNMatClone, libsundials_sundials), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy(A)
    ccall((:SUNMatDestroy, libsundials_sundials), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero(A)
    ccall((:SUNMatZero, libsundials_sundials), Cint, (SUNMatrix,), A)
end

function SUNMatCopy(A, B)
    ccall((:SUNMatCopy, libsundials_sundials), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd(c, A, B)
    ccall((:SUNMatScaleAdd, libsundials_sundials), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI(c, A)
    ccall((:SUNMatScaleAddI, libsundials_sundials), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvecSetup(A)
    ccall((:SUNMatMatvecSetup, libsundials_sundials), Cint, (SUNMatrix,), A)
end

function SUNMatMatvec(A, x, y)
    ccall((:SUNMatMatvec, libsundials_sundials), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace(A, lenrw, leniw)
    ccall((:SUNMatSpace, libsundials_sundials), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
# Julia wrapper for header: sundials_mpi_types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_nonlinearsolver.h
# Automatically generated using Clang.jl


function SUNNonlinSolNewEmpty()
    ccall((:SUNNonlinSolNewEmpty, libsundials_sundials), SUNNonlinearSolver, ())
end

function SUNNonlinSolFreeEmpty(NLS)
    ccall((:SUNNonlinSolFreeEmpty, libsundials_sundials), Cvoid, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolGetType(NLS)
    ccall((:SUNNonlinSolGetType, libsundials_sundials), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize(NLS)
    ccall((:SUNNonlinSolInitialize, libsundials_sundials), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetup(NLS, y, mem)
    ccall((:SUNNonlinSolSetup, libsundials_sundials), Cint, (SUNNonlinearSolver, N_Vector, Ptr{Cvoid}), NLS, y, mem)
end

function SUNNonlinSolSolve(NLS, y0, y, w, tol, callLSetup, mem)
    ccall((:SUNNonlinSolSolve, libsundials_sundials), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callLSetup, mem)
end

function SUNNonlinSolFree(NLS)
    ccall((:SUNNonlinSolFree, libsundials_sundials), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn(NLS, SysFn)
    ccall((:SUNNonlinSolSetSysFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetLSetupFn(NLS, SetupFn)
    ccall((:SUNNonlinSolSetLSetupFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolLSetupFn), NLS, SetupFn)
end

function SUNNonlinSolSetLSolveFn(NLS, SolveFn)
    ccall((:SUNNonlinSolSetLSolveFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolLSolveFn), NLS, SolveFn)
end

function SUNNonlinSolSetConvTestFn(NLS, CTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters(NLS, maxiters)
    ccall((:SUNNonlinSolSetMaxIters, libsundials_sundials), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolGetNumIters(NLS, niters)
    ccall((:SUNNonlinSolGetNumIters, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter(NLS, iter)
    ccall((:SUNNonlinSolGetCurIter, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails(NLS, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end
# Julia wrapper for header: sundials_nvector.h
# Automatically generated using Clang.jl


function N_VNewEmpty()
    ccall((:N_VNewEmpty, libsundials_sundials), N_Vector, ())
end

function N_VFreeEmpty(v)
    ccall((:N_VFreeEmpty, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VCopyOps(w, v)
    ccall((:N_VCopyOps, libsundials_sundials), Cint, (N_Vector, N_Vector), w, v)
end

function N_VGetVectorID(w)
    ccall((:N_VGetVectorID, libsundials_sundials), N_Vector_ID, (N_Vector,), w)
end

function N_VClone(w)
    ccall((:N_VClone, libsundials_sundials), N_Vector, (N_Vector,), w)
end

function N_VCloneEmpty(w)
    ccall((:N_VCloneEmpty, libsundials_sundials), N_Vector, (N_Vector,), w)
end

function N_VDestroy(v)
    ccall((:N_VDestroy, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VSpace(v, lrw, liw)
    ccall((:N_VSpace, libsundials_sundials), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetArrayPointer(v)
    ccall((:N_VGetArrayPointer, libsundials_sundials), Ptr{realtype}, (N_Vector,), v)
end

function N_VSetArrayPointer(v_data, v)
    ccall((:N_VSetArrayPointer, libsundials_sundials), Cvoid, (Ptr{realtype}, N_Vector), v_data, v)
end

function N_VGetCommunicator(v)
    ccall((:N_VGetCommunicator, libsundials_sundials), Ptr{Cvoid}, (N_Vector,), v)
end

function N_VGetLength(v)
    ccall((:N_VGetLength, libsundials_sundials), sunindextype, (N_Vector,), v)
end

function N_VLinearSum(a, x, b, y, z)
    ccall((:N_VLinearSum, libsundials_sundials), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst(c, z)
    ccall((:N_VConst, libsundials_sundials), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd(x, y, z)
    ccall((:N_VProd, libsundials_sundials), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv(x, y, z)
    ccall((:N_VDiv, libsundials_sundials), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale(c, x, z)
    ccall((:N_VScale, libsundials_sundials), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs(x, z)
    ccall((:N_VAbs, libsundials_sundials), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv(x, z)
    ccall((:N_VInv, libsundials_sundials), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst(x, b, z)
    ccall((:N_VAddConst, libsundials_sundials), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VDotProd(x, y)
    ccall((:N_VDotProd, libsundials_sundials), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNorm(x)
    ccall((:N_VMaxNorm, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VWrmsNorm(x, w)
    ccall((:N_VWrmsNorm, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask(x, w, id)
    ccall((:N_VWrmsNormMask, libsundials_sundials), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VMin(x)
    ccall((:N_VMin, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VWL2Norm(x, w)
    ccall((:N_VWL2Norm, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VL1Norm(x)
    ccall((:N_VL1Norm, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VCompare(c, x, z)
    ccall((:N_VCompare, libsundials_sundials), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VInvTest(x, z)
    ccall((:N_VInvTest, libsundials_sundials), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMask(c, x, m)
    ccall((:N_VConstrMask, libsundials_sundials), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotient(num, denom)
    ccall((:N_VMinQuotient, libsundials_sundials), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VLinearCombination(nvec, c, X, z)
    ccall((:N_VLinearCombination, libsundials_sundials), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, X, z)
end

function N_VScaleAddMulti(nvec, a, x, Y, Z)
    ccall((:N_VScaleAddMulti, libsundials_sundials), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti(nvec, x, Y, dotprods)
    ccall((:N_VDotProdMulti, libsundials_sundials), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray(nvec, a, X, b, Y, Z)
    ccall((:N_VLinearSumVectorArray, libsundials_sundials), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray(nvec, c, X, Z)
    ccall((:N_VScaleVectorArray, libsundials_sundials), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray(nvec, c, Z)
    ccall((:N_VConstVectorArray, libsundials_sundials), Cint, (Cint, realtype, Ptr{N_Vector}), nvec, c, Z)
end

function N_VWrmsNormVectorArray(nvec, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray, libsundials_sundials), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvec, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray(nvec, X, W, id, nrm)
    ccall((:N_VWrmsNormMaskVectorArray, libsundials_sundials), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VScaleAddMultiVectorArray(nvec, nsum, a, X, Y, Z)
    ccall((:N_VScaleAddMultiVectorArray, libsundials_sundials), Cint, (Cint, Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}), nvec, nsum, a, X, Y, Z)
end

function N_VLinearCombinationVectorArray(nvec, nsum, c, X, Z)
    ccall((:N_VLinearCombinationVectorArray, libsundials_sundials), Cint, (Cint, Cint, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{N_Vector}), nvec, nsum, c, X, Z)
end

function N_VDotProdLocal(x, y)
    ccall((:N_VDotProdLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNormLocal(x)
    ccall((:N_VMaxNormLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VMinLocal(x)
    ccall((:N_VMinLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VL1NormLocal(x)
    ccall((:N_VL1NormLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VWSqrSumLocal(x, w)
    ccall((:N_VWSqrSumLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal(x, w, id)
    ccall((:N_VWSqrSumMaskLocal, libsundials_sundials), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VInvTestLocal(x, z)
    ccall((:N_VInvTestLocal, libsundials_sundials), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMaskLocal(c, x, m)
    ccall((:N_VConstrMaskLocal, libsundials_sundials), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotientLocal(num, denom)
    ccall((:N_VMinQuotientLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VNewVectorArray(count)
    ccall((:N_VNewVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint,), count)
end

function N_VCloneEmptyVectorArray(count, w)
    ccall((:N_VCloneEmptyVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArray(count, w)
    ccall((:N_VCloneVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VDestroyVectorArray(vs, count)
    ccall((:N_VDestroyVectorArray, libsundials_sundials), Cvoid, (Ptr{N_Vector}, Cint), vs, count)
end

function N_VGetVecAtIndexVectorArray(vs, index)
    ccall((:N_VGetVecAtIndexVectorArray, libsundials_sundials), N_Vector, (Ptr{N_Vector}, Cint), vs, index)
end

function N_VSetVecAtIndexVectorArray(vs, index, w)
    ccall((:N_VSetVecAtIndexVectorArray, libsundials_sundials), Cvoid, (Ptr{N_Vector}, Cint, N_Vector), vs, index, w)
end

function N_VPrint(v)
    ccall((:N_VPrint, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VPrintFile(v, outfile)
    ccall((:N_VPrintFile, libsundials_sundials), Cvoid, (N_Vector, Ptr{FILE}), v, outfile)
end
# Julia wrapper for header: sundials_types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_version.h
# Automatically generated using Clang.jl


function SUNDIALSGetVersion(version, len)
    ccall((:SUNDIALSGetVersion, libsundials_sundials), Cint, (Cstring, Cint), version, len)
end

function SUNDIALSGetVersionNumber(major, minor, patch, label, len)
    ccall((:SUNDIALSGetVersionNumber, libsundials_sundials), Cint, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cstring, Cint), major, minor, patch, label, len)
end
