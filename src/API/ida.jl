# Julia wrapper for header: ida.h
# Automatically generated using Clang.jl


function IDACreate()
    ccall((:IDACreate, libsundials_ida), IDAMemPtr, ())
end

function IDAInit(ida_mem, res, t0, yy0, yp0)
    ccall((:IDAInit, libsundials_ida), Cint, (IDAMemPtr, IDAResFn, realtype, N_Vector, N_Vector), ida_mem, res, t0, yy0, yp0)
end

function IDAReInit(ida_mem, t0, yy0, yp0)
    ccall((:IDAReInit, libsundials_ida), Cint, (IDAMemPtr, realtype, N_Vector, N_Vector), ida_mem, t0, yy0, yp0)
end

function IDASStolerances(ida_mem, reltol, abstol)
    ccall((:IDASStolerances, libsundials_ida), Cint, (IDAMemPtr, realtype, realtype), ida_mem, reltol, abstol)
end

function IDASVtolerances(ida_mem, reltol, abstol)
    ccall((:IDASVtolerances, libsundials_ida), Cint, (IDAMemPtr, realtype, N_Vector), ida_mem, reltol, abstol)
end

function IDAWFtolerances(ida_mem, efun)
    ccall((:IDAWFtolerances, libsundials_ida), Cint, (IDAMemPtr, IDAEwtFn), ida_mem, efun)
end

function IDACalcIC(ida_mem, icopt, tout1)
    ccall((:IDACalcIC, libsundials_ida), Cint, (IDAMemPtr, Cint, realtype), ida_mem, icopt, tout1)
end

function IDASetNonlinConvCoefIC(ida_mem, epiccon)
    ccall((:IDASetNonlinConvCoefIC, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, epiccon)
end

function IDASetMaxNumStepsIC(ida_mem, maxnh)
    ccall((:IDASetMaxNumStepsIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnh)
end

function IDASetMaxNumJacsIC(ida_mem, maxnj)
    ccall((:IDASetMaxNumJacsIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnj)
end

function IDASetMaxNumItersIC(ida_mem, maxnit)
    ccall((:IDASetMaxNumItersIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnit)
end

function IDASetLineSearchOffIC(ida_mem, lsoff)
    ccall((:IDASetLineSearchOffIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, lsoff)
end

function IDASetStepToleranceIC(ida_mem, steptol)
    ccall((:IDASetStepToleranceIC, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, steptol)
end

function IDASetMaxBacksIC(ida_mem, maxbacks)
    ccall((:IDASetMaxBacksIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxbacks)
end

function IDASetErrHandlerFn(ida_mem, ehfun, eh_data)
    ccall((:IDASetErrHandlerFn, libsundials_ida), Cint, (IDAMemPtr, IDAErrHandlerFn, Ptr{Cvoid}), ida_mem, ehfun, eh_data)
end

function IDASetErrFile(ida_mem, errfp)
    ccall((:IDASetErrFile, libsundials_ida), Cint, (IDAMemPtr, Ptr{FILE}), ida_mem, errfp)
end

function IDASetUserData(ida_mem, user_data)
    ccall((:IDASetUserData, libsundials_ida), Cint, (IDAMemPtr, Any), ida_mem, user_data)
end

function IDASetMaxOrd(ida_mem, maxord)
    ccall((:IDASetMaxOrd, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxord)
end

function IDASetMaxNumSteps(ida_mem, mxsteps)
    ccall((:IDASetMaxNumSteps, libsundials_ida), Cint, (IDAMemPtr, Clong), ida_mem, mxsteps)
end

function IDASetInitStep(ida_mem, hin)
    ccall((:IDASetInitStep, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, hin)
end

function IDASetMaxStep(ida_mem, hmax)
    ccall((:IDASetMaxStep, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, hmax)
end

function IDASetStopTime(ida_mem, tstop)
    ccall((:IDASetStopTime, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, tstop)
end

function IDASetNonlinConvCoef(ida_mem, epcon)
    ccall((:IDASetNonlinConvCoef, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, epcon)
end

function IDASetMaxErrTestFails(ida_mem, maxnef)
    ccall((:IDASetMaxErrTestFails, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnef)
end

function IDASetMaxNonlinIters(ida_mem, maxcor)
    ccall((:IDASetMaxNonlinIters, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxcor)
end

function IDASetMaxConvFails(ida_mem, maxncf)
    ccall((:IDASetMaxConvFails, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxncf)
end

function IDASetSuppressAlg(ida_mem, suppressalg)
    ccall((:IDASetSuppressAlg, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, suppressalg)
end

function IDASetId(ida_mem, id)
    ccall((:IDASetId, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, id)
end

function IDASetConstraints(ida_mem, constraints)
    ccall((:IDASetConstraints, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, constraints)
end

function IDASetNonlinearSolver(ida_mem, NLS)
    ccall((:IDASetNonlinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNNonlinearSolver), ida_mem, NLS)
end

function IDARootInit(ida_mem, nrtfn, g)
    ccall((:IDARootInit, libsundials_ida), Cint, (IDAMemPtr, Cint, IDARootFn), ida_mem, nrtfn, g)
end

function IDASetRootDirection(ida_mem, rootdir)
    ccall((:IDASetRootDirection, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn, libsundials_ida), Cint, (IDAMemPtr,), ida_mem)
end

function IDASolve(ida_mem, tout, tret, yret, ypret, itask)
    ccall((:IDASolve, libsundials_ida), Cint, (IDAMemPtr, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint), ida_mem, tout, tret, yret, ypret, itask)
end

function IDAComputeY(ida_mem, ycor, y)
    ccall((:IDAComputeY, libsundials_ida), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, ycor, y)
end

function IDAComputeYp(ida_mem, ycor, yp)
    ccall((:IDAComputeYp, libsundials_ida), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, ycor, yp)
end

function IDAGetDky(ida_mem, t, k, dky)
    ccall((:IDAGetDky, libsundials_ida), Cint, (IDAMemPtr, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetWorkSpace(ida_mem, lenrw, leniw)
    ccall((:IDAGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrw, leniw)
end

function IDAGetNumSteps(ida_mem, nsteps)
    ccall((:IDAGetNumSteps, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nsteps)
end

function IDAGetNumResEvals(ida_mem, nrevals)
    ccall((:IDAGetNumResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem, nlinsetups)
    ccall((:IDAGetNumLinSolvSetups, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem, netfails)
    ccall((:IDAGetNumErrTestFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, netfails)
end

function IDAGetNumBacktrackOps(ida_mem, nbacktr)
    ccall((:IDAGetNumBacktrackOps, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nbacktr)
end

function IDAGetConsistentIC(ida_mem, yy0_mod, yp0_mod)
    ccall((:IDAGetConsistentIC, libsundials_ida), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, yy0_mod, yp0_mod)
end

function IDAGetLastOrder(ida_mem, klast)
    ccall((:IDAGetLastOrder, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, klast)
end

function IDAGetCurrentOrder(ida_mem, kcur)
    ccall((:IDAGetCurrentOrder, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, kcur)
end

function IDAGetCurrentCj(ida_mem, cj)
    ccall((:IDAGetCurrentCj, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, cj)
end

function IDAGetCurrentY(ida_mem, ycur)
    ccall((:IDAGetCurrentY, libsundials_ida), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, ycur)
end

function IDAGetCurrentYp(ida_mem, ypcur)
    ccall((:IDAGetCurrentYp, libsundials_ida), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, ypcur)
end

function IDAGetActualInitStep(ida_mem, hinused)
    ccall((:IDAGetActualInitStep, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hinused)
end

function IDAGetLastStep(ida_mem, hlast)
    ccall((:IDAGetLastStep, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hlast)
end

function IDAGetCurrentStep(ida_mem, hcur)
    ccall((:IDAGetCurrentStep, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hcur)
end

function IDAGetCurrentTime(ida_mem, tcur)
    ccall((:IDAGetCurrentTime, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tcur)
end

function IDAGetTolScaleFactor(ida_mem, tolsfact)
    ccall((:IDAGetTolScaleFactor, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tolsfact)
end

function IDAGetErrWeights(ida_mem, eweight)
    ccall((:IDAGetErrWeights, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, eweight)
end

function IDAGetEstLocalErrors(ida_mem, ele)
    ccall((:IDAGetEstLocalErrors, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, ele)
end

function IDAGetNumGEvals(ida_mem, ngevals)
    ccall((:IDAGetNumGEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevals)
end

function IDAGetRootInfo(ida_mem, rootsfound)
    ccall((:IDAGetRootInfo, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootsfound)
end

function IDAGetIntegratorStats(ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:IDAGetIntegratorStats, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem, nniters)
    ccall((:IDAGetNumNonlinSolvIters, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem, nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nncfails)
end

function IDAGetNonlinSolvStats(ida_mem, nniters, nncfails)
    ccall((:IDAGetNonlinSolvStats, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nniters, nncfails)
end

function IDAGetReturnFlagName(flag)
    ccall((:IDAGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end

function IDAFree(ida_mem)
    ccall((:IDAFree, libsundials_ida), Cvoid, (Ref{IDAMemPtr},), ida_mem)
end

function IDASetJacTimesResFn(ida_mem, jtimesResFn)
    ccall((:IDASetJacTimesResFn, libsundials_ida), Cint, (IDAMemPtr, IDAResFn), ida_mem, jtimesResFn)
end
# Julia wrapper for header: ida_bbdpre.h
# Automatically generated using Clang.jl


function IDABBDPrecInit(ida_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_yy, Gres, Gcomm)
    ccall((:IDABBDPrecInit, libsundials_ida), Cint, (IDAMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFn, IDABBDCommFn), ida_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_yy, Gres, Gcomm)
end

function IDABBDPrecReInit(ida_mem, mudq, mldq, dq_rel_yy)
    ccall((:IDABBDPrecReInit, libsundials_ida), Cint, (IDAMemPtr, sunindextype, sunindextype, realtype), ida_mem, mudq, mldq, dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem, lenrwBBDP, leniwBBDP)
    ccall((:IDABBDPrecGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwBBDP, leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem, ngevalsBBDP)
    ccall((:IDABBDPrecGetNumGfnEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevalsBBDP)
end
# Julia wrapper for header: ida_direct.h
# Automatically generated using Clang.jl


function IDADlsSetLinearSolver(ida_mem, LS, A)
    ccall((:IDADlsSetLinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDADlsSetJacFn(ida_mem, jac)
    ccall((:IDADlsSetJacFn, libsundials_ida), Cint, (IDAMemPtr, IDADlsJacFn), ida_mem, jac)
end

function IDADlsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDADlsGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem, njevals)
    ccall((:IDADlsGetNumJacEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDADlsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDADlsGetNumResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDADlsGetLastFlag(ida_mem, flag)
    ccall((:IDADlsGetLastFlag, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDADlsGetReturnFlagName(flag)
    ccall((:IDADlsGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end
# Julia wrapper for header: ida_ls.h
# Automatically generated using Clang.jl


function IDASetLinearSolver(ida_mem, LS, A)
    ccall((:IDASetLinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDASetJacFn(ida_mem, jac)
    ccall((:IDASetJacFn, libsundials_ida), Cint, (IDAMemPtr, IDALsJacFn), ida_mem, jac)
end

function IDASetPreconditioner(ida_mem, pset, psolve)
    ccall((:IDASetPreconditioner, libsundials_ida), Cint, (IDAMemPtr, IDALsPrecSetupFn, IDALsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASetJacTimes(ida_mem, jtsetup, jtimes)
    ccall((:IDASetJacTimes, libsundials_ida), Cint, (IDAMemPtr, IDALsJacTimesSetupFn, IDALsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASetEpsLin(ida_mem, eplifac)
    ccall((:IDASetEpsLin, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, eplifac)
end

function IDASetLinearSolutionScaling(ida_mem, onoff)
    ccall((:IDASetLinearSolutionScaling, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, onoff)
end

function IDASetIncrementFactor(ida_mem, dqincfac)
    ccall((:IDASetIncrementFactor, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, dqincfac)
end

function IDAGetLinWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDAGetLinWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDAGetNumJacEvals(ida_mem, njevals)
    ccall((:IDAGetNumJacEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDAGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDAGetNumPrecEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npevals)
end

function IDAGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDAGetNumPrecSolves, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npsolves)
end

function IDAGetNumLinIters(ida_mem, nliters)
    ccall((:IDAGetNumLinIters, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nliters)
end

function IDAGetNumLinConvFails(ida_mem, nlcfails)
    ccall((:IDAGetNumLinConvFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlcfails)
end

function IDAGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDAGetNumJTSetupEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njtsetups)
end

function IDAGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDAGetNumJtimesEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njvevals)
end

function IDAGetNumLinResEvals(ida_mem, nrevalsLS)
    ccall((:IDAGetNumLinResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDAGetLastLinFlag(ida_mem, flag)
    ccall((:IDAGetLastLinFlag, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDAGetLinReturnFlagName(flag)
    ccall((:IDAGetLinReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end
# Julia wrapper for header: ida_spils.h
# Automatically generated using Clang.jl


function IDASpilsSetLinearSolver(ida_mem, LS)
    ccall((:IDASpilsSetLinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNLinearSolver), ida_mem, LS)
end

function IDASpilsSetPreconditioner(ida_mem, pset, psolve)
    ccall((:IDASpilsSetPreconditioner, libsundials_ida), Cint, (IDAMemPtr, IDASpilsPrecSetupFn, IDASpilsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASpilsSetJacTimes(ida_mem, jtsetup, jtimes)
    ccall((:IDASpilsSetJacTimes, libsundials_ida), Cint, (IDAMemPtr, IDASpilsJacTimesSetupFn, IDASpilsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASpilsSetEpsLin(ida_mem, eplifac)
    ccall((:IDASpilsSetEpsLin, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem, dqincfac)
    ccall((:IDASpilsSetIncrementFactor, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDASpilsGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDASpilsGetNumPrecEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDASpilsGetNumPrecSolves, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npsolves)
end

function IDASpilsGetNumLinIters(ida_mem, nliters)
    ccall((:IDASpilsGetNumLinIters, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nliters)
end

function IDASpilsGetNumConvFails(ida_mem, nlcfails)
    ccall((:IDASpilsGetNumConvFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlcfails)
end

function IDASpilsGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDASpilsGetNumJTSetupEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njtsetups)
end

function IDASpilsGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDASpilsGetNumJtimesEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njvevals)
end

function IDASpilsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDASpilsGetNumResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem, flag)
    ccall((:IDASpilsGetLastFlag, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDASpilsGetReturnFlagName(flag)
    ccall((:IDASpilsGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end
