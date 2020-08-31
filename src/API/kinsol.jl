# Julia wrapper for header: kinsol.h
# Automatically generated using Clang.jl


function KINCreate()
    ccall((:KINCreate, libsundials_kinsol), KINMemPtr, ())
end

function KINInit(kinmem, func, tmpl)
    ccall((:KINInit, libsundials_kinsol), Cint, (KINMemPtr, KINSysFn, N_Vector), kinmem, func, tmpl)
end

function KINSol(kinmem, uu, strategy, u_scale, f_scale)
    ccall((:KINSol, libsundials_kinsol), Cint, (KINMemPtr, N_Vector, Cint, N_Vector, N_Vector), kinmem, uu, strategy, u_scale, f_scale)
end

function KINSetErrHandlerFn(kinmem, ehfun, eh_data)
    ccall((:KINSetErrHandlerFn, libsundials_kinsol), Cint, (KINMemPtr, KINErrHandlerFn, Ptr{Cvoid}), kinmem, ehfun, eh_data)
end

function KINSetErrFile(kinmem, errfp)
    ccall((:KINSetErrFile, libsundials_kinsol), Cint, (KINMemPtr, Ptr{FILE}), kinmem, errfp)
end

function KINSetInfoHandlerFn(kinmem, ihfun, ih_data)
    ccall((:KINSetInfoHandlerFn, libsundials_kinsol), Cint, (KINMemPtr, KINInfoHandlerFn, Ptr{Cvoid}), kinmem, ihfun, ih_data)
end

function KINSetInfoFile(kinmem, infofp)
    ccall((:KINSetInfoFile, libsundials_kinsol), Cint, (KINMemPtr, Ptr{FILE}), kinmem, infofp)
end

function KINSetUserData(kinmem, user_data)
    ccall((:KINSetUserData, libsundials_kinsol), Cint, (KINMemPtr, Any), kinmem, user_data)
end

function KINSetPrintLevel(kinmemm, printfl)
    ccall((:KINSetPrintLevel, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmemm, printfl)
end

function KINSetMAA(kinmem, maa)
    ccall((:KINSetMAA, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, maa)
end

function KINSetDampingAA(kinmem, beta)
    ccall((:KINSetDampingAA, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, beta)
end

function KINSetNumMaxIters(kinmem, mxiter)
    ccall((:KINSetNumMaxIters, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, mxiter)
end

function KINSetNoInitSetup(kinmem, noInitSetup)
    ccall((:KINSetNoInitSetup, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, noInitSetup)
end

function KINSetNoResMon(kinmem, noNNIResMon)
    ccall((:KINSetNoResMon, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem, msbset)
    ccall((:KINSetMaxSetupCalls, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, msbset)
end

function KINSetMaxSubSetupCalls(kinmem, msbsetsub)
    ccall((:KINSetMaxSubSetupCalls, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, msbsetsub)
end

function KINSetEtaForm(kinmem, etachoice)
    ccall((:KINSetEtaForm, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, etachoice)
end

function KINSetEtaConstValue(kinmem, eta)
    ccall((:KINSetEtaConstValue, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, eta)
end

function KINSetEtaParams(kinmem, egamma, ealpha)
    ccall((:KINSetEtaParams, libsundials_kinsol), Cint, (KINMemPtr, realtype, realtype), kinmem, egamma, ealpha)
end

function KINSetResMonParams(kinmem, omegamin, omegamax)
    ccall((:KINSetResMonParams, libsundials_kinsol), Cint, (KINMemPtr, realtype, realtype), kinmem, omegamin, omegamax)
end

function KINSetResMonConstValue(kinmem, omegaconst)
    ccall((:KINSetResMonConstValue, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, omegaconst)
end

function KINSetNoMinEps(kinmem, noMinEps)
    ccall((:KINSetNoMinEps, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, noMinEps)
end

function KINSetMaxNewtonStep(kinmem, mxnewtstep)
    ccall((:KINSetMaxNewtonStep, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, mxnewtstep)
end

function KINSetMaxBetaFails(kinmem, mxnbcf)
    ccall((:KINSetMaxBetaFails, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, mxnbcf)
end

function KINSetRelErrFunc(kinmem, relfunc)
    ccall((:KINSetRelErrFunc, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, relfunc)
end

function KINSetFuncNormTol(kinmem, fnormtol)
    ccall((:KINSetFuncNormTol, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, fnormtol)
end

function KINSetScaledStepTol(kinmem, scsteptol)
    ccall((:KINSetScaledStepTol, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, scsteptol)
end

function KINSetConstraints(kinmem, constraints)
    ccall((:KINSetConstraints, libsundials_kinsol), Cint, (KINMemPtr, N_Vector), kinmem, constraints)
end

function KINSetSysFunc(kinmem, func)
    ccall((:KINSetSysFunc, libsundials_kinsol), Cint, (KINMemPtr, KINSysFn), kinmem, func)
end

function KINGetWorkSpace(kinmem, lenrw, leniw)
    ccall((:KINGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrw, leniw)
end

function KINGetNumNonlinSolvIters(kinmem, nniters)
    ccall((:KINGetNumNonlinSolvIters, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nniters)
end

function KINGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINGetNumFuncEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nfevals)
end

function KINGetNumBetaCondFails(kinmem, nbcfails)
    ccall((:KINGetNumBetaCondFails, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nbcfails)
end

function KINGetNumBacktrackOps(kinmem, nbacktr)
    ccall((:KINGetNumBacktrackOps, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nbacktr)
end

function KINGetFuncNorm(kinmem, fnorm)
    ccall((:KINGetFuncNorm, libsundials_kinsol), Cint, (KINMemPtr, Ptr{realtype}), kinmem, fnorm)
end

function KINGetStepLength(kinmem, steplength)
    ccall((:KINGetStepLength, libsundials_kinsol), Cint, (KINMemPtr, Ptr{realtype}), kinmem, steplength)
end

function KINGetReturnFlagName(flag)
    ccall((:KINGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function KINFree(kinmem)
    ccall((:KINFree, libsundials_kinsol), Cvoid, (Ref{KINMemPtr},), kinmem)
end

function KINSetJacTimesVecSysFn(kinmem, jtimesSysFn)
    ccall((:KINSetJacTimesVecSysFn, libsundials_kinsol), Cint, (KINMemPtr, KINSysFn), kinmem, jtimesSysFn)
end
# Julia wrapper for header: kinsol_bbdpre.h
# Automatically generated using Clang.jl


function KINBBDPrecInit(kinmem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_uu, gloc, gcomm)
    ccall((:KINBBDPrecInit, libsundials_kinsol), Cint, (KINMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, KINBBDLocalFn, KINBBDCommFn), kinmem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_uu, gloc, gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem, lenrwBBDP, leniwBBDP)
    ccall((:KINBBDPrecGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwBBDP, leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem, ngevalsBBDP)
    ccall((:KINBBDPrecGetNumGfnEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, ngevalsBBDP)
end
# Julia wrapper for header: kinsol_direct.h
# Automatically generated using Clang.jl


function KINDlsSetLinearSolver(kinmem, LS, A)
    ccall((:KINDlsSetLinearSolver, libsundials_kinsol), Cint, (KINMemPtr, SUNLinearSolver, SUNMatrix), kinmem, LS, A)
end

function KINDlsSetJacFn(kinmem, jac)
    ccall((:KINDlsSetJacFn, libsundials_kinsol), Cint, (KINMemPtr, KINDlsJacFn), kinmem, jac)
end

function KINDlsGetWorkSpace(kinmem, lenrw, leniw)
    ccall((:KINDlsGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrw, leniw)
end

function KINDlsGetNumJacEvals(kinmem, njevals)
    ccall((:KINDlsGetNumJacEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, njevals)
end

function KINDlsGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINDlsGetNumFuncEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nfevals)
end

function KINDlsGetLastFlag(kinmem, flag)
    ccall((:KINDlsGetLastFlag, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, flag)
end

function KINDlsGetReturnFlagName(flag)
    ccall((:KINDlsGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end
# Julia wrapper for header: kinsol_ls.h
# Automatically generated using Clang.jl


function KINSetLinearSolver(kinmem, LS, A)
    ccall((:KINSetLinearSolver, libsundials_kinsol), Cint, (KINMemPtr, SUNLinearSolver, SUNMatrix), kinmem, LS, A)
end

function KINSetJacFn(kinmem, jac)
    ccall((:KINSetJacFn, libsundials_kinsol), Cint, (KINMemPtr, KINLsJacFn), kinmem, jac)
end

function KINSetPreconditioner(kinmem, psetup, psolve)
    ccall((:KINSetPreconditioner, libsundials_kinsol), Cint, (KINMemPtr, KINLsPrecSetupFn, KINLsPrecSolveFn), kinmem, psetup, psolve)
end

function KINSetJacTimesVecFn(kinmem, jtv)
    ccall((:KINSetJacTimesVecFn, libsundials_kinsol), Cint, (KINMemPtr, KINLsJacTimesVecFn), kinmem, jtv)
end

function KINGetLinWorkSpace(kinmem, lenrwLS, leniwLS)
    ccall((:KINGetLinWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwLS, leniwLS)
end

function KINGetNumJacEvals(kinmem, njevals)
    ccall((:KINGetNumJacEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, njevals)
end

function KINGetNumLinFuncEvals(kinmem, nfevals)
    ccall((:KINGetNumLinFuncEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nfevals)
end

function KINGetNumPrecEvals(kinmem, npevals)
    ccall((:KINGetNumPrecEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, npevals)
end

function KINGetNumPrecSolves(kinmem, npsolves)
    ccall((:KINGetNumPrecSolves, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, npsolves)
end

function KINGetNumLinIters(kinmem, nliters)
    ccall((:KINGetNumLinIters, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nliters)
end

function KINGetNumLinConvFails(kinmem, nlcfails)
    ccall((:KINGetNumLinConvFails, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nlcfails)
end

function KINGetNumJtimesEvals(kinmem, njvevals)
    ccall((:KINGetNumJtimesEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, njvevals)
end

function KINGetLastLinFlag(kinmem, flag)
    ccall((:KINGetLastLinFlag, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, flag)
end

function KINGetLinReturnFlagName(flag)
    ccall((:KINGetLinReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end
# Julia wrapper for header: kinsol_spils.h
# Automatically generated using Clang.jl


function KINSpilsSetLinearSolver(kinmem, LS)
    ccall((:KINSpilsSetLinearSolver, libsundials_kinsol), Cint, (KINMemPtr, SUNLinearSolver), kinmem, LS)
end

function KINSpilsSetPreconditioner(kinmem, psetup, psolve)
    ccall((:KINSpilsSetPreconditioner, libsundials_kinsol), Cint, (KINMemPtr, KINSpilsPrecSetupFn, KINSpilsPrecSolveFn), kinmem, psetup, psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem, jtv)
    ccall((:KINSpilsSetJacTimesVecFn, libsundials_kinsol), Cint, (KINMemPtr, KINSpilsJacTimesVecFn), kinmem, jtv)
end

function KINSpilsGetWorkSpace(kinmem, lenrwLS, leniwLS)
    ccall((:KINSpilsGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwLS, leniwLS)
end

function KINSpilsGetNumPrecEvals(kinmem, npevals)
    ccall((:KINSpilsGetNumPrecEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, npevals)
end

function KINSpilsGetNumPrecSolves(kinmem, npsolves)
    ccall((:KINSpilsGetNumPrecSolves, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, npsolves)
end

function KINSpilsGetNumLinIters(kinmem, nliters)
    ccall((:KINSpilsGetNumLinIters, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nliters)
end

function KINSpilsGetNumConvFails(kinmem, nlcfails)
    ccall((:KINSpilsGetNumConvFails, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem, njvevals)
    ccall((:KINSpilsGetNumJtimesEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINSpilsGetNumFuncEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nfevals)
end

function KINSpilsGetLastFlag(kinmem, flag)
    ccall((:KINSpilsGetLastFlag, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, flag)
end

function KINSpilsGetReturnFlagName(flag)
    ccall((:KINSpilsGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end
