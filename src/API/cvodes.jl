# Julia wrapper for header: cvodes.h
# Automatically generated using Clang.jl


function CVodeCreate(lmm)
    ccall((:CVodeCreate, libsundials_cvodes), CVODEMemPtr, (Cint,), lmm)
end

function CVodeInit(cvode_mem, f, t0, y0)
    ccall((:CVodeInit, libsundials_cvodes), Cint, (CVODEMemPtr, CVRhsFn, realtype, N_Vector), cvode_mem, f, t0, y0)
end

function CVodeReInit(cvode_mem, t0, y0)
    ccall((:CVodeReInit, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, t0, y0)
end

function CVodeSStolerances(cvode_mem, reltol, abstol)
    ccall((:CVodeSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, realtype), cvode_mem, reltol, abstol)
end

function CVodeSVtolerances(cvode_mem, reltol, abstol)
    ccall((:CVodeSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, reltol, abstol)
end

function CVodeWFtolerances(cvode_mem, efun)
    ccall((:CVodeWFtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, CVEwtFn), cvode_mem, efun)
end

function CVodeSetErrHandlerFn(cvode_mem, ehfun, eh_data)
    ccall((:CVodeSetErrHandlerFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVErrHandlerFn, Ptr{Cvoid}), cvode_mem, ehfun, eh_data)
end

function CVodeSetErrFile(cvode_mem, errfp)
    ccall((:CVodeSetErrFile, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{FILE}), cvode_mem, errfp)
end

function CVodeSetUserData(cvode_mem, user_data)
    ccall((:CVodeSetUserData, libsundials_cvodes), Cint, (CVODEMemPtr, Any), cvode_mem, user_data)
end

function CVodeSetMaxOrd(cvode_mem, maxord)
    ccall((:CVodeSetMaxOrd, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxord)
end

function CVodeSetMaxNumSteps(cvode_mem, mxsteps)
    ccall((:CVodeSetMaxNumSteps, libsundials_cvodes), Cint, (CVODEMemPtr, Clong), cvode_mem, mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem, mxhnil)
    ccall((:CVodeSetMaxHnilWarns, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, mxhnil)
end

function CVodeSetStabLimDet(cvode_mem, stldet)
    ccall((:CVodeSetStabLimDet, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, stldet)
end

function CVodeSetInitStep(cvode_mem, hin)
    ccall((:CVodeSetInitStep, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, hin)
end

function CVodeSetMinStep(cvode_mem, hmin)
    ccall((:CVodeSetMinStep, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, hmin)
end

function CVodeSetMaxStep(cvode_mem, hmax)
    ccall((:CVodeSetMaxStep, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, hmax)
end

function CVodeSetStopTime(cvode_mem, tstop)
    ccall((:CVodeSetStopTime, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem, maxnef)
    ccall((:CVodeSetMaxErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem, maxcor)
    ccall((:CVodeSetMaxNonlinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxcor)
end

function CVodeSetMaxConvFails(cvode_mem, maxncf)
    ccall((:CVodeSetMaxConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem, nlscoef)
    ccall((:CVodeSetNonlinConvCoef, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, nlscoef)
end

function CVodeSetConstraints(cvode_mem, constraints)
    ccall((:CVodeSetConstraints, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, constraints)
end

function CVodeSetNonlinearSolver(cvode_mem, NLS)
    ccall((:CVodeSetNonlinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeRootInit(cvode_mem, nrtfn, g)
    ccall((:CVodeRootInit, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVRootFn), cvode_mem, nrtfn, g)
end

function CVodeSetRootDirection(cvode_mem, rootdir)
    ccall((:CVodeSetRootDirection, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVode(cvode_mem, tout, yout, tret, itask)
    ccall((:CVode, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), cvode_mem, tout, yout, tret, itask)
end

function CVodeGetDky(cvode_mem, t, k, dky)
    ccall((:CVodeGetDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetWorkSpace(cvode_mem, lenrw, leniw)
    ccall((:CVodeGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrw, leniw)
end

function CVodeGetNumSteps(cvode_mem, nsteps)
    ccall((:CVodeGetNumSteps, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem, nfevals)
    ccall((:CVodeGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem, nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem, netfails)
    ccall((:CVodeGetNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, netfails)
end

function CVodeGetLastOrder(cvode_mem, qlast)
    ccall((:CVodeGetLastOrder, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qlast)
end

function CVodeGetCurrentOrder(cvode_mem, qcur)
    ccall((:CVodeGetCurrentOrder, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qcur)
end

function CVodeGetCurrentGamma(cvode_mem, gamma)
    ccall((:CVodeGetCurrentGamma, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, gamma)
end

function CVodeGetNumStabLimOrderReds(cvode_mem, nslred)
    ccall((:CVodeGetNumStabLimOrderReds, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nslred)
end

function CVodeGetActualInitStep(cvode_mem, hinused)
    ccall((:CVodeGetActualInitStep, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hinused)
end

function CVodeGetLastStep(cvode_mem, hlast)
    ccall((:CVodeGetLastStep, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hlast)
end

function CVodeGetCurrentStep(cvode_mem, hcur)
    ccall((:CVodeGetCurrentStep, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hcur)
end

function CVodeGetCurrentState(cvode_mem, y)
    ccall((:CVodeGetCurrentState, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, y)
end

function CVodeGetCurrentStateSens(cvode_mem, yS)
    ccall((:CVodeGetCurrentStateSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Ptr{N_Vector}}), cvode_mem, yS)
end

function CVodeGetCurrentSensSolveIndex(cvode_mem, index)
    ccall((:CVodeGetCurrentSensSolveIndex, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, index)
end

function CVodeGetCurrentTime(cvode_mem, tcur)
    ccall((:CVodeGetCurrentTime, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tcur)
end

function CVodeGetTolScaleFactor(cvode_mem, tolsfac)
    ccall((:CVodeGetTolScaleFactor, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tolsfac)
end

function CVodeGetErrWeights(cvode_mem, eweight)
    ccall((:CVodeGetErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, eweight)
end

function CVodeGetEstLocalErrors(cvode_mem, ele)
    ccall((:CVodeGetEstLocalErrors, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, ele)
end

function CVodeGetNumGEvals(cvode_mem, ngevals)
    ccall((:CVodeGetNumGEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevals)
end

function CVodeGetRootInfo(cvode_mem, rootsfound)
    ccall((:CVodeGetRootInfo, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:CVodeGetIntegratorStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem, nniters)
    ccall((:CVodeGetNumNonlinSolvIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem, nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem, nniters, nncfails)
    ccall((:CVodeGetNonlinSolvStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nniters, nncfails)
end

function CVodeGetReturnFlagName(flag)
    ccall((:CVodeGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree, libsundials_cvodes), Cvoid, (Ref{CVODEMemPtr},), cvode_mem)
end

function CVodeSetJacTimesRhsFn(cvode_mem, jtimesRhsFn)
    ccall((:CVodeSetJacTimesRhsFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVRhsFn), cvode_mem, jtimesRhsFn)
end

function CVodeQuadInit(cvode_mem, fQ, yQ0)
    ccall((:CVodeQuadInit, libsundials_cvodes), Cint, (CVODEMemPtr, CVQuadRhsFn, N_Vector), cvode_mem, fQ, yQ0)
end

function CVodeQuadReInit(cvode_mem, yQ0)
    ccall((:CVodeQuadReInit, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, yQ0)
end

function CVodeQuadSStolerances(cvode_mem, reltolQ, abstolQ)
    ccall((:CVodeQuadSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, realtype), cvode_mem, reltolQ, abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem, reltolQ, abstolQ)
    ccall((:CVodeQuadSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, reltolQ, abstolQ)
end

function CVodeSetQuadErrCon(cvode_mem, errconQ)
    ccall((:CVodeSetQuadErrCon, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, errconQ)
end

function CVodeGetQuad(cvode_mem, tret, yQout)
    ccall((:CVodeGetQuad, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, N_Vector), cvode_mem, tret, yQout)
end

function CVodeGetQuadDky(cvode_mem, t, k, dky)
    ccall((:CVodeGetQuadDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetQuadNumRhsEvals(cvode_mem, nfQevals)
    ccall((:CVodeGetQuadNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem, nQetfails)
    ccall((:CVodeGetQuadNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem, eQweight)
    ccall((:CVodeGetQuadErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, eQweight)
end

function CVodeGetQuadStats(cvode_mem, nfQevals, nQetfails)
    ccall((:CVodeGetQuadStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfQevals, nQetfails)
end

function CVodeQuadFree(cvode_mem)
    ccall((:CVodeQuadFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeSensInit(cvode_mem, Ns, ism, fS, yS0)
    ccall((:CVodeSensInit, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint, CVSensRhsFn, Ptr{N_Vector}), cvode_mem, Ns, ism, fS, yS0)
end

function CVodeSensInit1(cvode_mem, Ns, ism, fS1, yS0)
    ccall((:CVodeSensInit1, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint, CVSensRhs1Fn, Ptr{N_Vector}), cvode_mem, Ns, ism, fS1, yS0)
end

function CVodeSensReInit(cvode_mem, ism, yS0)
    ccall((:CVodeSensReInit, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{N_Vector}), cvode_mem, ism, yS0)
end

function CVodeSensSStolerances(cvode_mem, reltolS, abstolS)
    ccall((:CVodeSensSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{realtype}), cvode_mem, reltolS, abstolS)
end

function CVodeSensSVtolerances(cvode_mem, reltolS, abstolS)
    ccall((:CVodeSensSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{N_Vector}), cvode_mem, reltolS, abstolS)
end

function CVodeSensEEtolerances(cvode_mem)
    ccall((:CVodeSensEEtolerances, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeSetSensDQMethod(cvode_mem, DQtype, DQrhomax)
    ccall((:CVodeSetSensDQMethod, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, DQtype, DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem, errconS)
    ccall((:CVodeSetSensErrCon, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem, maxcorS)
    ccall((:CVodeSetSensMaxNonlinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxcorS)
end

function CVodeSetSensParams(cvode_mem, p, pbar, plist)
    ccall((:CVodeSetSensParams, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Ptr{realtype}, Ptr{Cint}), cvode_mem, p, pbar, plist)
end

function CVodeSetNonlinearSolverSensSim(cvode_mem, NLS)
    ccall((:CVodeSetNonlinearSolverSensSim, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetNonlinearSolverSensStg(cvode_mem, NLS)
    ccall((:CVodeSetNonlinearSolverSensStg, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetNonlinearSolverSensStg1(cvode_mem, NLS)
    ccall((:CVodeSetNonlinearSolverSensStg1, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSensToggleOff(cvode_mem)
    ccall((:CVodeSensToggleOff, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeGetSens(cvode_mem, tret, ySout)
    ccall((:CVodeGetSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Ptr{N_Vector}), cvode_mem, tret, ySout)
end

function CVodeGetSens1(cvode_mem, tret, is, ySout)
    ccall((:CVodeGetSens1, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Cint, N_Vector), cvode_mem, tret, is, ySout)
end

function CVodeGetSensDky(cvode_mem, t, k, dkyA)
    ccall((:CVodeGetSensDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Ptr{N_Vector}), cvode_mem, t, k, dkyA)
end

function CVodeGetSensDky1(cvode_mem, t, k, is, dky)
    ccall((:CVodeGetSensDky1, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Cint, N_Vector), cvode_mem, t, k, is, dky)
end

function CVodeGetSensNumRhsEvals(cvode_mem, nfSevals)
    ccall((:CVodeGetSensNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem, nfevalsS)
    ccall((:CVodeGetNumRhsEvalsSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem, nSetfails)
    ccall((:CVodeGetSensNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem, nlinsetupsS)
    ccall((:CVodeGetSensNumLinSolvSetups, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem, eSweight)
    ccall((:CVodeGetSensErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, eSweight)
end

function CVodeGetSensStats(cvode_mem, nfSevals, nfevalsS, nSetfails, nlinsetupsS)
    ccall((:CVodeGetSensStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfSevals, nfevalsS, nSetfails, nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem, nSniters)
    ccall((:CVodeGetSensNumNonlinSolvIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem, nSncfails)
    ccall((:CVodeGetSensNumNonlinSolvConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem, nSTGR1niters)
    ccall((:CVodeGetStgrSensNumNonlinSolvIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem, nSTGR1ncfails)
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem, nSniters, nSncfails)
    ccall((:CVodeGetSensNonlinSolvStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nSniters, nSncfails)
end

function CVodeSensFree(cvode_mem)
    ccall((:CVodeSensFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeQuadSensInit(cvode_mem, fQS, yQS0)
    ccall((:CVodeQuadSensInit, libsundials_cvodes), Cint, (CVODEMemPtr, CVQuadSensRhsFn, Ptr{N_Vector}), cvode_mem, fQS, yQS0)
end

function CVodeQuadSensReInit(cvode_mem, yQS0)
    ccall((:CVodeQuadSensReInit, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem, reltolQS, abstolQS)
    ccall((:CVodeQuadSensSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{realtype}), cvode_mem, reltolQS, abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem, reltolQS, abstolQS)
    ccall((:CVodeQuadSensSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{N_Vector}), cvode_mem, reltolQS, abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    ccall((:CVodeQuadSensEEtolerances, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeSetQuadSensErrCon(cvode_mem, errconQS)
    ccall((:CVodeSetQuadSensErrCon, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, errconQS)
end

function CVodeGetQuadSens(cvode_mem, tret, yQSout)
    ccall((:CVodeGetQuadSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Ptr{N_Vector}), cvode_mem, tret, yQSout)
end

function CVodeGetQuadSens1(cvode_mem, tret, is, yQSout)
    ccall((:CVodeGetQuadSens1, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Cint, N_Vector), cvode_mem, tret, is, yQSout)
end

function CVodeGetQuadSensDky(cvode_mem, t, k, dkyQS_all)
    ccall((:CVodeGetQuadSensDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Ptr{N_Vector}), cvode_mem, t, k, dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem, t, k, is, dkyQS)
    ccall((:CVodeGetQuadSensDky1, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Cint, N_Vector), cvode_mem, t, k, is, dkyQS)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem, nfQSevals)
    ccall((:CVodeGetQuadSensNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem, nQSetfails)
    ccall((:CVodeGetQuadSensNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem, eQSweight)
    ccall((:CVodeGetQuadSensErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem, nfQSevals, nQSetfails)
    ccall((:CVodeGetQuadSensStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfQSevals, nQSetfails)
end

function CVodeQuadSensFree(cvode_mem)
    ccall((:CVodeQuadSensFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeAdjInit(cvode_mem, steps, interp)
    ccall((:CVodeAdjInit, libsundials_cvodes), Cint, (CVODEMemPtr, Clong, Cint), cvode_mem, steps, interp)
end

function CVodeAdjReInit(cvode_mem)
    ccall((:CVodeAdjReInit, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    ccall((:CVodeAdjFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeCreateB(cvode_mem, lmmB, which)
    ccall((:CVodeCreateB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{Cint}), cvode_mem, lmmB, which)
end

function CVodeInitB(cvode_mem, which, fB, tB0, yB0)
    ccall((:CVodeInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVRhsFnB, realtype, N_Vector), cvode_mem, which, fB, tB0, yB0)
end

function CVodeInitBS(cvode_mem, which, fBs, tB0, yB0)
    ccall((:CVodeInitBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVRhsFnBS, realtype, N_Vector), cvode_mem, which, fBs, tB0, yB0)
end

function CVodeReInitB(cvode_mem, which, tB0, yB0)
    ccall((:CVodeReInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, N_Vector), cvode_mem, which, tB0, yB0)
end

function CVodeSStolerancesB(cvode_mem, which, reltolB, abstolB)
    ccall((:CVodeSStolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, realtype), cvode_mem, which, reltolB, abstolB)
end

function CVodeSVtolerancesB(cvode_mem, which, reltolB, abstolB)
    ccall((:CVodeSVtolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, N_Vector), cvode_mem, which, reltolB, abstolB)
end

function CVodeQuadInitB(cvode_mem, which, fQB, yQB0)
    ccall((:CVodeQuadInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVQuadRhsFnB, N_Vector), cvode_mem, which, fQB, yQB0)
end

function CVodeQuadInitBS(cvode_mem, which, fQBs, yQB0)
    ccall((:CVodeQuadInitBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVQuadRhsFnBS, N_Vector), cvode_mem, which, fQBs, yQB0)
end

function CVodeQuadReInitB(cvode_mem, which, yQB0)
    ccall((:CVodeQuadReInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, N_Vector), cvode_mem, which, yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem, which, reltolQB, abstolQB)
    ccall((:CVodeQuadSStolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, realtype), cvode_mem, which, reltolQB, abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem, which, reltolQB, abstolQB)
    ccall((:CVodeQuadSVtolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, N_Vector), cvode_mem, which, reltolQB, abstolQB)
end

function CVodeF(cvode_mem, tout, yout, tret, itask, ncheckPtr)
    ccall((:CVodeF, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint, Ptr{Cint}), cvode_mem, tout, yout, tret, itask, ncheckPtr)
end

function CVodeB(cvode_mem, tBout, itaskB)
    ccall((:CVodeB, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint), cvode_mem, tBout, itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem)
    ccall((:CVodeSetAdjNoSensi, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeSetUserDataB(cvode_mem, which, user_dataB)
    ccall((:CVodeSetUserDataB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Any), cvode_mem, which, user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem, which, maxordB)
    ccall((:CVodeSetMaxOrdB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint), cvode_mem, which, maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem, which, mxstepsB)
    ccall((:CVodeSetMaxNumStepsB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Clong), cvode_mem, which, mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem, which, stldetB)
    ccall((:CVodeSetStabLimDetB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint), cvode_mem, which, stldetB)
end

function CVodeSetInitStepB(cvode_mem, which, hinB)
    ccall((:CVodeSetInitStepB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, hinB)
end

function CVodeSetMinStepB(cvode_mem, which, hminB)
    ccall((:CVodeSetMinStepB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, hminB)
end

function CVodeSetMaxStepB(cvode_mem, which, hmaxB)
    ccall((:CVodeSetMaxStepB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, hmaxB)
end

function CVodeSetConstraintsB(cvode_mem, which, constraintsB)
    ccall((:CVodeSetConstraintsB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, N_Vector), cvode_mem, which, constraintsB)
end

function CVodeSetQuadErrConB(cvode_mem, which, errconQB)
    ccall((:CVodeSetQuadErrConB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint), cvode_mem, which, errconQB)
end

function CVodeSetNonlinearSolverB(cvode_mem, which, NLS)
    ccall((:CVodeSetNonlinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNNonlinearSolver), cvode_mem, which, NLS)
end

function CVodeGetB(cvode_mem, which, tBret, yB)
    ccall((:CVodeGetB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, N_Vector), cvode_mem, which, tBret, yB)
end

function CVodeGetQuadB(cvode_mem, which, tBret, qB)
    ccall((:CVodeGetQuadB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, N_Vector), cvode_mem, which, tBret, qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem, which)
    ccall((:CVodeGetAdjCVodeBmem, libsundials_cvodes), Ptr{Cvoid}, (CVODEMemPtr, Cint), cvode_mem, which)
end

function CVodeGetAdjY(cvode_mem, t, y)
    ccall((:CVodeGetAdjY, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, t, y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem, ckpnt)
    ccall((:CVodeGetAdjCheckPointsInfo, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{CVadjCheckPointRec}), cvode_mem, ckpnt)
end

function CVodeSetJacTimesRhsFnB(cvode_mem, which, jtimesRhsFn)
    ccall((:CVodeSetJacTimesRhsFnB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVRhsFn), cvode_mem, which, jtimesRhsFn)
end

function CVodeGetAdjDataPointHermite(cvode_mem, which, t, y, yd)
    ccall((:CVodeGetAdjDataPointHermite, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, N_Vector, N_Vector), cvode_mem, which, t, y, yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem, which, t, order, y)
    ccall((:CVodeGetAdjDataPointPolynomial, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, Ptr{Cint}, N_Vector), cvode_mem, which, t, order, y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem, addr)
    ccall((:CVodeGetAdjCurrentCheckPoint, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Ptr{Cvoid}}), cvode_mem, addr)
end
# Julia wrapper for header: cvodes_bandpre.h
# Automatically generated using Clang.jl


function CVBandPrecInit(cvode_mem, N, mu, ml)
    ccall((:CVBandPrecInit, libsundials_cvodes), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype), cvode_mem, N, mu, ml)
end

function CVBandPrecGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVBandPrecGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem, nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsBP)
end

function CVBandPrecInitB(cvode_mem, which, nB, muB, mlB)
    ccall((:CVBandPrecInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, sunindextype, sunindextype, sunindextype), cvode_mem, which, nB, muB, mlB)
end
# Julia wrapper for header: cvodes_bbdpre.h
# Automatically generated using Clang.jl


function CVBBDPrecInit(cvode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
    ccall((:CVBBDPrecInit, libsundials_cvodes), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFn, CVCommFn), cvode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function CVBBDPrecReInit(cvode_mem, mudq, mldq, dqrely)
    ccall((:CVBBDPrecReInit, libsundials_cvodes), Cint, (CVODEMemPtr, sunindextype, sunindextype, realtype), cvode_mem, mudq, mldq, dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem, lenrwBBDP, leniwBBDP)
    ccall((:CVBBDPrecGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwBBDP, leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem, ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevalsBBDP)
end

function CVBBDPrecInitB(cvode_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dqrelyB, glocB, cfnB)
    ccall((:CVBBDPrecInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFnB, CVCommFnB), cvode_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dqrelyB, glocB, cfnB)
end

function CVBBDPrecReInitB(cvode_mem, which, mudqB, mldqB, dqrelyB)
    ccall((:CVBBDPrecReInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, sunindextype, sunindextype, realtype), cvode_mem, which, mudqB, mldqB, dqrelyB)
end
# Julia wrapper for header: cvodes_diag.h
# Automatically generated using Clang.jl


function CVDiag(cvode_mem)
    ccall((:CVDiag, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDiagGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem, flag)
    ccall((:CVDiagGetLastFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVDiagGetReturnFlagName(flag)
    ccall((:CVDiagGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVDiagB(cvode_mem, which)
    ccall((:CVDiagB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, which)
end
# Julia wrapper for header: cvodes_direct.h
# Automatically generated using Clang.jl


function CVDlsSetLinearSolver(cvode_mem, LS, A)
    ccall((:CVDlsSetLinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVDlsSetJacFn(cvode_mem, jac)
    ccall((:CVDlsSetJacFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVDlsJacFn), cvode_mem, jac)
end

function CVDlsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDlsGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVDlsGetNumJacEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem, flag)
    ccall((:CVDlsGetLastFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVDlsGetReturnFlagName(flag)
    ccall((:CVDlsGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVDlsSetLinearSolverB(cvode_mem, which, LS, A)
    ccall((:CVDlsSetLinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNLinearSolver, SUNMatrix), cvode_mem, which, LS, A)
end

function CVDlsSetJacFnB(cvode_mem, which, jacB)
    ccall((:CVDlsSetJacFnB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVDlsJacFnB), cvode_mem, which, jacB)
end

function CVDlsSetJacFnBS(cvode_mem, which, jacBS)
    ccall((:CVDlsSetJacFnBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVDlsJacFnBS), cvode_mem, which, jacBS)
end
# Julia wrapper for header: cvodes_ls.h
# Automatically generated using Clang.jl


function CVodeSetLinearSolver(cvode_mem, LS, A)
    ccall((:CVodeSetLinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVodeSetJacFn(cvode_mem, jac)
    ccall((:CVodeSetJacFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsJacFn), cvode_mem, jac)
end

function CVodeSetMaxStepsBetweenJac(cvode_mem, msbj)
    ccall((:CVodeSetMaxStepsBetweenJac, libsundials_cvodes), Cint, (CVODEMemPtr, Clong), cvode_mem, msbj)
end

function CVodeSetLinearSolutionScaling(cvode_mem, onoff)
    ccall((:CVodeSetLinearSolutionScaling, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, onoff)
end

function CVodeSetEpsLin(cvode_mem, eplifac)
    ccall((:CVodeSetEpsLin, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, eplifac)
end

function CVodeSetPreconditioner(cvode_mem, pset, psolve)
    ccall((:CVodeSetPreconditioner, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsPrecSetupFn, CVLsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVodeSetJacTimes(cvode_mem, jtsetup, jtimes)
    ccall((:CVodeSetJacTimes, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsJacTimesSetupFn, CVLsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVodeSetLinSysFn(cvode_mem, linsys)
    ccall((:CVodeSetLinSysFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsLinSysFn), cvode_mem, linsys)
end

function CVodeGetLinWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVodeGetLinWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVodeGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVodeGetNumJacEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njevals)
end

function CVodeGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVodeGetNumPrecEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npevals)
end

function CVodeGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVodeGetNumPrecSolves, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npsolves)
end

function CVodeGetNumLinIters(cvode_mem, nliters)
    ccall((:CVodeGetNumLinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nliters)
end

function CVodeGetNumLinConvFails(cvode_mem, nlcfails)
    ccall((:CVodeGetNumLinConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVodeGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVodeGetNumJTSetupEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVodeGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVodeGetNumJtimesEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njvevals)
end

function CVodeGetNumLinRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVodeGetNumLinRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVodeGetLastLinFlag(cvode_mem, flag)
    ccall((:CVodeGetLastLinFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVodeGetLinReturnFlagName(flag)
    ccall((:CVodeGetLinReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeSetLinearSolverB(cvode_mem, which, LS, A)
    ccall((:CVodeSetLinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNLinearSolver, SUNMatrix), cvode_mem, which, LS, A)
end

function CVodeSetJacFnB(cvode_mem, which, jacB)
    ccall((:CVodeSetJacFnB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacFnB), cvode_mem, which, jacB)
end

function CVodeSetJacFnBS(cvode_mem, which, jacBS)
    ccall((:CVodeSetJacFnBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacFnBS), cvode_mem, which, jacBS)
end

function CVodeSetEpsLinB(cvode_mem, which, eplifacB)
    ccall((:CVodeSetEpsLinB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, eplifacB)
end

function CVodeSetLinearSolutionScalingB(cvode_mem, which, onoffB)
    ccall((:CVodeSetLinearSolutionScalingB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint), cvode_mem, which, onoffB)
end

function CVodeSetPreconditionerB(cvode_mem, which, psetB, psolveB)
    ccall((:CVodeSetPreconditionerB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsPrecSetupFnB, CVLsPrecSolveFnB), cvode_mem, which, psetB, psolveB)
end

function CVodeSetPreconditionerBS(cvode_mem, which, psetBS, psolveBS)
    ccall((:CVodeSetPreconditionerBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsPrecSetupFnBS, CVLsPrecSolveFnBS), cvode_mem, which, psetBS, psolveBS)
end

function CVodeSetJacTimesB(cvode_mem, which, jtsetupB, jtimesB)
    ccall((:CVodeSetJacTimesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacTimesSetupFnB, CVLsJacTimesVecFnB), cvode_mem, which, jtsetupB, jtimesB)
end

function CVodeSetJacTimesBS(cvode_mem, which, jtsetupBS, jtimesBS)
    ccall((:CVodeSetJacTimesBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacTimesSetupFnBS, CVLsJacTimesVecFnBS), cvode_mem, which, jtsetupBS, jtimesBS)
end

function CVodeSetLinSysFnB(cvode_mem, which, linsys)
    ccall((:CVodeSetLinSysFnB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsLinSysFnB), cvode_mem, which, linsys)
end

function CVodeSetLinSysFnBS(cvode_mem, which, linsys)
    ccall((:CVodeSetLinSysFnBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsLinSysFnBS), cvode_mem, which, linsys)
end
# Julia wrapper for header: cvodes_spils.h
# Automatically generated using Clang.jl


function CVSpilsSetLinearSolver(cvode_mem, LS)
    ccall((:CVSpilsSetLinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNLinearSolver), cvode_mem, LS)
end

function CVSpilsSetEpsLin(cvode_mem, eplifac)
    ccall((:CVSpilsSetEpsLin, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem, pset, psolve)
    ccall((:CVSpilsSetPreconditioner, libsundials_cvodes), Cint, (CVODEMemPtr, CVSpilsPrecSetupFn, CVSpilsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVSpilsSetJacTimes(cvode_mem, jtsetup, jtimes)
    ccall((:CVSpilsSetJacTimes, libsundials_cvodes), Cint, (CVODEMemPtr, CVSpilsJacTimesSetupFn, CVSpilsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVSpilsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVSpilsGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVSpilsGetNumPrecEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVSpilsGetNumPrecSolves, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem, nliters)
    ccall((:CVSpilsGetNumLinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nliters)
end

function CVSpilsGetNumConvFails(cvode_mem, nlcfails)
    ccall((:CVSpilsGetNumConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVSpilsGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVSpilsGetNumJTSetupEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVSpilsGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVSpilsGetNumJtimesEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem, flag)
    ccall((:CVSpilsGetLastFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVSpilsGetReturnFlagName(flag)
    ccall((:CVSpilsGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVSpilsSetLinearSolverB(cvode_mem, which, LS)
    ccall((:CVSpilsSetLinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNLinearSolver), cvode_mem, which, LS)
end

function CVSpilsSetEpsLinB(cvode_mem, which, eplifacB)
    ccall((:CVSpilsSetEpsLinB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, eplifacB)
end

function CVSpilsSetPreconditionerB(cvode_mem, which, psetB, psolveB)
    ccall((:CVSpilsSetPreconditionerB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsPrecSetupFnB, CVSpilsPrecSolveFnB), cvode_mem, which, psetB, psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem, which, psetBS, psolveBS)
    ccall((:CVSpilsSetPreconditionerBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsPrecSetupFnBS, CVSpilsPrecSolveFnBS), cvode_mem, which, psetBS, psolveBS)
end

function CVSpilsSetJacTimesB(cvode_mem, which, jtsetupB, jtimesB)
    ccall((:CVSpilsSetJacTimesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsJacTimesSetupFnB, CVSpilsJacTimesVecFnB), cvode_mem, which, jtsetupB, jtimesB)
end

function CVSpilsSetJacTimesBS(cvode_mem, which, jtsetupBS, jtimesBS)
    ccall((:CVSpilsSetJacTimesBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsJacTimesSetupFnBS, CVSpilsJacTimesVecFnBS), cvode_mem, which, jtsetupBS, jtimesBS)
end
