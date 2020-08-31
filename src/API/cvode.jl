# Julia wrapper for header: cvode.h
# Automatically generated using Clang.jl


function CVodeCreate(lmm)
    ccall((:CVodeCreate, libsundials_cvode), CVODEMemPtr, (Cint,), lmm)
end

function CVodeInit(cvode_mem, f, t0, y0)
    ccall((:CVodeInit, libsundials_cvode), Cint, (CVODEMemPtr, CVRhsFn, realtype, N_Vector), cvode_mem, f, t0, y0)
end

function CVodeReInit(cvode_mem, t0, y0)
    ccall((:CVodeReInit, libsundials_cvode), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, t0, y0)
end

function CVodeSStolerances(cvode_mem, reltol, abstol)
    ccall((:CVodeSStolerances, libsundials_cvode), Cint, (CVODEMemPtr, realtype, realtype), cvode_mem, reltol, abstol)
end

function CVodeSVtolerances(cvode_mem, reltol, abstol)
    ccall((:CVodeSVtolerances, libsundials_cvode), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, reltol, abstol)
end

function CVodeWFtolerances(cvode_mem, efun)
    ccall((:CVodeWFtolerances, libsundials_cvode), Cint, (CVODEMemPtr, CVEwtFn), cvode_mem, efun)
end

function CVodeSetErrHandlerFn(cvode_mem, ehfun, eh_data)
    ccall((:CVodeSetErrHandlerFn, libsundials_cvode), Cint, (CVODEMemPtr, CVErrHandlerFn, Ptr{Cvoid}), cvode_mem, ehfun, eh_data)
end

function CVodeSetErrFile(cvode_mem, errfp)
    ccall((:CVodeSetErrFile, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{FILE}), cvode_mem, errfp)
end

function CVodeSetUserData(cvode_mem, user_data)
    ccall((:CVodeSetUserData, libsundials_cvode), Cint, (CVODEMemPtr, Any), cvode_mem, user_data)
end

function CVodeSetMonitorFn(cvode_mem, fn)
    ccall((:CVodeSetMonitorFn, libsundials_cvode), Cint, (CVODEMemPtr, CVMonitorFn), cvode_mem, fn)
end

function CVodeSetMonitorFrequency(cvode_mem, nst)
    ccall((:CVodeSetMonitorFrequency, libsundials_cvode), Cint, (CVODEMemPtr, Clong), cvode_mem, nst)
end

function CVodeSetMaxOrd(cvode_mem, maxord)
    ccall((:CVodeSetMaxOrd, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxord)
end

function CVodeSetMaxNumSteps(cvode_mem, mxsteps)
    ccall((:CVodeSetMaxNumSteps, libsundials_cvode), Cint, (CVODEMemPtr, Clong), cvode_mem, mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem, mxhnil)
    ccall((:CVodeSetMaxHnilWarns, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, mxhnil)
end

function CVodeSetStabLimDet(cvode_mem, stldet)
    ccall((:CVodeSetStabLimDet, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, stldet)
end

function CVodeSetInitStep(cvode_mem, hin)
    ccall((:CVodeSetInitStep, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, hin)
end

function CVodeSetMinStep(cvode_mem, hmin)
    ccall((:CVodeSetMinStep, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, hmin)
end

function CVodeSetMaxStep(cvode_mem, hmax)
    ccall((:CVodeSetMaxStep, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, hmax)
end

function CVodeSetStopTime(cvode_mem, tstop)
    ccall((:CVodeSetStopTime, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem, maxnef)
    ccall((:CVodeSetMaxErrTestFails, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem, maxcor)
    ccall((:CVodeSetMaxNonlinIters, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxcor)
end

function CVodeSetMaxConvFails(cvode_mem, maxncf)
    ccall((:CVodeSetMaxConvFails, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem, nlscoef)
    ccall((:CVodeSetNonlinConvCoef, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, nlscoef)
end

function CVodeSetConstraints(cvode_mem, constraints)
    ccall((:CVodeSetConstraints, libsundials_cvode), Cint, (CVODEMemPtr, N_Vector), cvode_mem, constraints)
end

function CVodeSetNonlinearSolver(cvode_mem, NLS)
    ccall((:CVodeSetNonlinearSolver, libsundials_cvode), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetUseIntegratorFusedKernels(cvode_mem, onoff)
    ccall((:CVodeSetUseIntegratorFusedKernels, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, onoff)
end

function CVodeRootInit(cvode_mem, nrtfn, g)
    ccall((:CVodeRootInit, libsundials_cvode), Cint, (CVODEMemPtr, Cint, CVRootFn), cvode_mem, nrtfn, g)
end

function CVodeSetRootDirection(cvode_mem, rootdir)
    ccall((:CVodeSetRootDirection, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn, libsundials_cvode), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVode(cvode_mem, tout, yout, tret, itask)
    ccall((:CVode, libsundials_cvode), Cint, (CVODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), cvode_mem, tout, yout, tret, itask)
end

function CVodeGetDky(cvode_mem, t, k, dky)
    ccall((:CVodeGetDky, libsundials_cvode), Cint, (CVODEMemPtr, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetWorkSpace(cvode_mem, lenrw, leniw)
    ccall((:CVodeGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrw, leniw)
end

function CVodeGetNumSteps(cvode_mem, nsteps)
    ccall((:CVodeGetNumSteps, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem, nfevals)
    ccall((:CVodeGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem, nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem, netfails)
    ccall((:CVodeGetNumErrTestFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, netfails)
end

function CVodeGetLastOrder(cvode_mem, qlast)
    ccall((:CVodeGetLastOrder, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qlast)
end

function CVodeGetCurrentOrder(cvode_mem, qcur)
    ccall((:CVodeGetCurrentOrder, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qcur)
end

function CVodeGetCurrentGamma(cvode_mem, gamma)
    ccall((:CVodeGetCurrentGamma, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, gamma)
end

function CVodeGetNumStabLimOrderReds(cvode_mem, nslred)
    ccall((:CVodeGetNumStabLimOrderReds, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nslred)
end

function CVodeGetActualInitStep(cvode_mem, hinused)
    ccall((:CVodeGetActualInitStep, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hinused)
end

function CVodeGetLastStep(cvode_mem, hlast)
    ccall((:CVodeGetLastStep, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hlast)
end

function CVodeGetCurrentStep(cvode_mem, hcur)
    ccall((:CVodeGetCurrentStep, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hcur)
end

function CVodeGetCurrentState(cvode_mem, y)
    ccall((:CVodeGetCurrentState, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, y)
end

function CVodeGetCurrentTime(cvode_mem, tcur)
    ccall((:CVodeGetCurrentTime, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tcur)
end

function CVodeGetTolScaleFactor(cvode_mem, tolsfac)
    ccall((:CVodeGetTolScaleFactor, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tolsfac)
end

function CVodeGetErrWeights(cvode_mem, eweight)
    ccall((:CVodeGetErrWeights, libsundials_cvode), Cint, (CVODEMemPtr, N_Vector), cvode_mem, eweight)
end

function CVodeGetEstLocalErrors(cvode_mem, ele)
    ccall((:CVodeGetEstLocalErrors, libsundials_cvode), Cint, (CVODEMemPtr, N_Vector), cvode_mem, ele)
end

function CVodeGetNumGEvals(cvode_mem, ngevals)
    ccall((:CVodeGetNumGEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevals)
end

function CVodeGetRootInfo(cvode_mem, rootsfound)
    ccall((:CVodeGetRootInfo, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:CVodeGetIntegratorStats, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem, nniters)
    ccall((:CVodeGetNumNonlinSolvIters, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem, nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem, nniters, nncfails)
    ccall((:CVodeGetNonlinSolvStats, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nniters, nncfails)
end

function CVodeGetReturnFlagName(flag)
    ccall((:CVodeGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree, libsundials_cvode), Cvoid, (Ref{CVODEMemPtr},), cvode_mem)
end

function CVodeSetJacTimesRhsFn(cvode_mem, jtimesRhsFn)
    ccall((:CVodeSetJacTimesRhsFn, libsundials_cvode), Cint, (CVODEMemPtr, CVRhsFn), cvode_mem, jtimesRhsFn)
end
# Julia wrapper for header: cvode_bandpre.h
# Automatically generated using Clang.jl


function CVBandPrecInit(cvode_mem, N, mu, ml)
    ccall((:CVBandPrecInit, libsundials_cvode), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype), cvode_mem, N, mu, ml)
end

function CVBandPrecGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVBandPrecGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem, nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsBP)
end
# Julia wrapper for header: cvode_bbdpre.h
# Automatically generated using Clang.jl


function CVBBDPrecInit(cvode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
    ccall((:CVBBDPrecInit, libsundials_cvode), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFn, CVCommFn), cvode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function CVBBDPrecReInit(cvode_mem, mudq, mldq, dqrely)
    ccall((:CVBBDPrecReInit, libsundials_cvode), Cint, (CVODEMemPtr, sunindextype, sunindextype, realtype), cvode_mem, mudq, mldq, dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem, lenrwBBDP, leniwBBDP)
    ccall((:CVBBDPrecGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwBBDP, leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem, ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevalsBBDP)
end
# Julia wrapper for header: cvode_diag.h
# Automatically generated using Clang.jl


function CVDiag(cvode_mem)
    ccall((:CVDiag, libsundials_cvode), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDiagGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem, flag)
    ccall((:CVDiagGetLastFlag, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVDiagGetReturnFlagName(flag)
    ccall((:CVDiagGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end
# Julia wrapper for header: cvode_direct.h
# Automatically generated using Clang.jl


function CVDlsSetLinearSolver(cvode_mem, LS, A)
    ccall((:CVDlsSetLinearSolver, libsundials_cvode), Cint, (CVODEMemPtr, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVDlsSetJacFn(cvode_mem, jac)
    ccall((:CVDlsSetJacFn, libsundials_cvode), Cint, (CVODEMemPtr, CVDlsJacFn), cvode_mem, jac)
end

function CVDlsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDlsGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVDlsGetNumJacEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem, flag)
    ccall((:CVDlsGetLastFlag, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVDlsGetReturnFlagName(flag)
    ccall((:CVDlsGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end
# Julia wrapper for header: cvode_ls.h
# Automatically generated using Clang.jl


function CVodeSetLinearSolver(cvode_mem, LS, A)
    ccall((:CVodeSetLinearSolver, libsundials_cvode), Cint, (CVODEMemPtr, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVodeSetJacFn(cvode_mem, jac)
    ccall((:CVodeSetJacFn, libsundials_cvode), Cint, (CVODEMemPtr, CVLsJacFn), cvode_mem, jac)
end

function CVodeSetMaxStepsBetweenJac(cvode_mem, msbj)
    ccall((:CVodeSetMaxStepsBetweenJac, libsundials_cvode), Cint, (CVODEMemPtr, Clong), cvode_mem, msbj)
end

function CVodeSetLinearSolutionScaling(cvode_mem, onoff)
    ccall((:CVodeSetLinearSolutionScaling, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, onoff)
end

function CVodeSetEpsLin(cvode_mem, eplifac)
    ccall((:CVodeSetEpsLin, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, eplifac)
end

function CVodeSetPreconditioner(cvode_mem, pset, psolve)
    ccall((:CVodeSetPreconditioner, libsundials_cvode), Cint, (CVODEMemPtr, CVLsPrecSetupFn, CVLsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVodeSetJacTimes(cvode_mem, jtsetup, jtimes)
    ccall((:CVodeSetJacTimes, libsundials_cvode), Cint, (CVODEMemPtr, CVLsJacTimesSetupFn, CVLsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVodeSetLinSysFn(cvode_mem, linsys)
    ccall((:CVodeSetLinSysFn, libsundials_cvode), Cint, (CVODEMemPtr, CVLsLinSysFn), cvode_mem, linsys)
end

function CVodeGetLinWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVodeGetLinWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVodeGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVodeGetNumJacEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njevals)
end

function CVodeGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVodeGetNumPrecEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npevals)
end

function CVodeGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVodeGetNumPrecSolves, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npsolves)
end

function CVodeGetNumLinIters(cvode_mem, nliters)
    ccall((:CVodeGetNumLinIters, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nliters)
end

function CVodeGetNumLinConvFails(cvode_mem, nlcfails)
    ccall((:CVodeGetNumLinConvFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVodeGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVodeGetNumJTSetupEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVodeGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVodeGetNumJtimesEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njvevals)
end

function CVodeGetNumLinRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVodeGetNumLinRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVodeGetLinSolveStats(cvode_mem, njevals, nfevalsLS, nliters, nlcfails, npevals, npsolves, njtsetups, njtimes)
    ccall((:CVodeGetLinSolveStats, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), cvode_mem, njevals, nfevalsLS, nliters, nlcfails, npevals, npsolves, njtsetups, njtimes)
end

function CVodeGetLastLinFlag(cvode_mem, flag)
    ccall((:CVodeGetLastLinFlag, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVodeGetLinReturnFlagName(flag)
    ccall((:CVodeGetLinReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end
# Julia wrapper for header: cvode_proj.h
# Automatically generated using Clang.jl


function CVodeSetProjFn(cvode_mem, pfun)
    ccall((:CVodeSetProjFn, libsundials_cvode), Cint, (CVODEMemPtr, CVProjFn), cvode_mem, pfun)
end

function CVodeSetProjErrEst(cvode_mem, onoff)
    ccall((:CVodeSetProjErrEst, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, onoff)
end

function CVodeSetProjFrequency(cvode_mem, proj_freq)
    ccall((:CVodeSetProjFrequency, libsundials_cvode), Cint, (CVODEMemPtr, Clong), cvode_mem, proj_freq)
end

function CVodeSetMaxNumProjFails(cvode_mem, max_fails)
    ccall((:CVodeSetMaxNumProjFails, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, max_fails)
end

function CVodeSetEpsProj(cvode_mem, eps)
    ccall((:CVodeSetEpsProj, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, eps)
end

function CVodeSetProjFailEta(cvode_mem, eta)
    ccall((:CVodeSetProjFailEta, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, eta)
end

function CVodeGetNumProjEvals(cvode_mem, nproj)
    ccall((:CVodeGetNumProjEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nproj)
end

function CVodeGetNumProjFails(cvode_mem, nprf)
    ccall((:CVodeGetNumProjFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nprf)
end
# Julia wrapper for header: cvode_spils.h
# Automatically generated using Clang.jl


function CVSpilsSetLinearSolver(cvode_mem, LS)
    ccall((:CVSpilsSetLinearSolver, libsundials_cvode), Cint, (CVODEMemPtr, SUNLinearSolver), cvode_mem, LS)
end

function CVSpilsSetEpsLin(cvode_mem, eplifac)
    ccall((:CVSpilsSetEpsLin, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem, pset, psolve)
    ccall((:CVSpilsSetPreconditioner, libsundials_cvode), Cint, (CVODEMemPtr, CVSpilsPrecSetupFn, CVSpilsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVSpilsSetJacTimes(cvode_mem, jtsetup, jtimes)
    ccall((:CVSpilsSetJacTimes, libsundials_cvode), Cint, (CVODEMemPtr, CVSpilsJacTimesSetupFn, CVSpilsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVSpilsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVSpilsGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVSpilsGetNumPrecEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVSpilsGetNumPrecSolves, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem, nliters)
    ccall((:CVSpilsGetNumLinIters, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nliters)
end

function CVSpilsGetNumConvFails(cvode_mem, nlcfails)
    ccall((:CVSpilsGetNumConvFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVSpilsGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVSpilsGetNumJTSetupEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVSpilsGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVSpilsGetNumJtimesEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem, flag)
    ccall((:CVSpilsGetLastFlag, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVSpilsGetReturnFlagName(flag)
    ccall((:CVSpilsGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end
