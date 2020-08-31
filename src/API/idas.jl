# Julia wrapper for header: idas.h
# Automatically generated using Clang.jl


function IDACreate()
    ccall((:IDACreate, libsundials_idas), IDAMemPtr, ())
end

function IDAInit(ida_mem, res, t0, yy0, yp0)
    ccall((:IDAInit, libsundials_idas), Cint, (IDAMemPtr, IDAResFn, realtype, N_Vector, N_Vector), ida_mem, res, t0, yy0, yp0)
end

function IDAReInit(ida_mem, t0, yy0, yp0)
    ccall((:IDAReInit, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector, N_Vector), ida_mem, t0, yy0, yp0)
end

function IDASStolerances(ida_mem, reltol, abstol)
    ccall((:IDASStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, realtype), ida_mem, reltol, abstol)
end

function IDASVtolerances(ida_mem, reltol, abstol)
    ccall((:IDASVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector), ida_mem, reltol, abstol)
end

function IDAWFtolerances(ida_mem, efun)
    ccall((:IDAWFtolerances, libsundials_idas), Cint, (IDAMemPtr, IDAEwtFn), ida_mem, efun)
end

function IDACalcIC(ida_mem, icopt, tout1)
    ccall((:IDACalcIC, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, icopt, tout1)
end

function IDASetNonlinConvCoefIC(ida_mem, epiccon)
    ccall((:IDASetNonlinConvCoefIC, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, epiccon)
end

function IDASetMaxNumStepsIC(ida_mem, maxnh)
    ccall((:IDASetMaxNumStepsIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnh)
end

function IDASetMaxNumJacsIC(ida_mem, maxnj)
    ccall((:IDASetMaxNumJacsIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnj)
end

function IDASetMaxNumItersIC(ida_mem, maxnit)
    ccall((:IDASetMaxNumItersIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnit)
end

function IDASetLineSearchOffIC(ida_mem, lsoff)
    ccall((:IDASetLineSearchOffIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, lsoff)
end

function IDASetStepToleranceIC(ida_mem, steptol)
    ccall((:IDASetStepToleranceIC, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, steptol)
end

function IDASetMaxBacksIC(ida_mem, maxbacks)
    ccall((:IDASetMaxBacksIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxbacks)
end

function IDASetErrHandlerFn(ida_mem, ehfun, eh_data)
    ccall((:IDASetErrHandlerFn, libsundials_idas), Cint, (IDAMemPtr, IDAErrHandlerFn, Ptr{Cvoid}), ida_mem, ehfun, eh_data)
end

function IDASetErrFile(ida_mem, errfp)
    ccall((:IDASetErrFile, libsundials_idas), Cint, (IDAMemPtr, Ptr{FILE}), ida_mem, errfp)
end

function IDASetUserData(ida_mem, user_data)
    ccall((:IDASetUserData, libsundials_idas), Cint, (IDAMemPtr, Any), ida_mem, user_data)
end

function IDASetMaxOrd(ida_mem, maxord)
    ccall((:IDASetMaxOrd, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxord)
end

function IDASetMaxNumSteps(ida_mem, mxsteps)
    ccall((:IDASetMaxNumSteps, libsundials_idas), Cint, (IDAMemPtr, Clong), ida_mem, mxsteps)
end

function IDASetInitStep(ida_mem, hin)
    ccall((:IDASetInitStep, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, hin)
end

function IDASetMaxStep(ida_mem, hmax)
    ccall((:IDASetMaxStep, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, hmax)
end

function IDASetStopTime(ida_mem, tstop)
    ccall((:IDASetStopTime, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, tstop)
end

function IDASetNonlinConvCoef(ida_mem, epcon)
    ccall((:IDASetNonlinConvCoef, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, epcon)
end

function IDASetMaxErrTestFails(ida_mem, maxnef)
    ccall((:IDASetMaxErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnef)
end

function IDASetMaxNonlinIters(ida_mem, maxcor)
    ccall((:IDASetMaxNonlinIters, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxcor)
end

function IDASetMaxConvFails(ida_mem, maxncf)
    ccall((:IDASetMaxConvFails, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxncf)
end

function IDASetSuppressAlg(ida_mem, suppressalg)
    ccall((:IDASetSuppressAlg, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, suppressalg)
end

function IDASetId(ida_mem, id)
    ccall((:IDASetId, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, id)
end

function IDASetConstraints(ida_mem, constraints)
    ccall((:IDASetConstraints, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, constraints)
end

function IDASetNonlinearSolver(ida_mem, NLS)
    ccall((:IDASetNonlinearSolver, libsundials_idas), Cint, (IDAMemPtr, SUNNonlinearSolver), ida_mem, NLS)
end

function IDARootInit(ida_mem, nrtfn, g)
    ccall((:IDARootInit, libsundials_idas), Cint, (IDAMemPtr, Cint, IDARootFn), ida_mem, nrtfn, g)
end

function IDASetRootDirection(ida_mem, rootdir)
    ccall((:IDASetRootDirection, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDASolve(ida_mem, tout, tret, yret, ypret, itask)
    ccall((:IDASolve, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint), ida_mem, tout, tret, yret, ypret, itask)
end

function IDAComputeY(ida_mem, ycor, y)
    ccall((:IDAComputeY, libsundials_idas), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, ycor, y)
end

function IDAComputeYp(ida_mem, ycor, yp)
    ccall((:IDAComputeYp, libsundials_idas), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, ycor, yp)
end

function IDAComputeYSens(ida_mem, ycor, yyS)
    ccall((:IDAComputeYSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, ycor, yyS)
end

function IDAComputeYpSens(ida_mem, ycor, ypS)
    ccall((:IDAComputeYpSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, ycor, ypS)
end

function IDAGetDky(ida_mem, t, k, dky)
    ccall((:IDAGetDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetWorkSpace(ida_mem, lenrw, leniw)
    ccall((:IDAGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrw, leniw)
end

function IDAGetNumSteps(ida_mem, nsteps)
    ccall((:IDAGetNumSteps, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nsteps)
end

function IDAGetNumResEvals(ida_mem, nrevals)
    ccall((:IDAGetNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem, nlinsetups)
    ccall((:IDAGetNumLinSolvSetups, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem, netfails)
    ccall((:IDAGetNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, netfails)
end

function IDAGetNumBacktrackOps(ida_mem, nbacktr)
    ccall((:IDAGetNumBacktrackOps, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nbacktr)
end

function IDAGetConsistentIC(ida_mem, yy0_mod, yp0_mod)
    ccall((:IDAGetConsistentIC, libsundials_idas), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, yy0_mod, yp0_mod)
end

function IDAGetLastOrder(ida_mem, klast)
    ccall((:IDAGetLastOrder, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, klast)
end

function IDAGetCurrentOrder(ida_mem, kcur)
    ccall((:IDAGetCurrentOrder, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, kcur)
end

function IDAGetCurrentCj(ida_mem, cj)
    ccall((:IDAGetCurrentCj, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, cj)
end

function IDAGetCurrentY(ida_mem, ycur)
    ccall((:IDAGetCurrentY, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, ycur)
end

function IDAGetCurrentYSens(ida_mem, yS)
    ccall((:IDAGetCurrentYSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{Ptr{N_Vector}}), ida_mem, yS)
end

function IDAGetCurrentYp(ida_mem, ypcur)
    ccall((:IDAGetCurrentYp, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, ypcur)
end

function IDAGetCurrentYpSens(ida_mem, ypS)
    ccall((:IDAGetCurrentYpSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{Ptr{N_Vector}}), ida_mem, ypS)
end

function IDAGetActualInitStep(ida_mem, hinused)
    ccall((:IDAGetActualInitStep, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hinused)
end

function IDAGetLastStep(ida_mem, hlast)
    ccall((:IDAGetLastStep, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hlast)
end

function IDAGetCurrentStep(ida_mem, hcur)
    ccall((:IDAGetCurrentStep, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hcur)
end

function IDAGetCurrentTime(ida_mem, tcur)
    ccall((:IDAGetCurrentTime, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tcur)
end

function IDAGetTolScaleFactor(ida_mem, tolsfact)
    ccall((:IDAGetTolScaleFactor, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tolsfact)
end

function IDAGetErrWeights(ida_mem, eweight)
    ccall((:IDAGetErrWeights, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, eweight)
end

function IDAGetEstLocalErrors(ida_mem, ele)
    ccall((:IDAGetEstLocalErrors, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, ele)
end

function IDAGetNumGEvals(ida_mem, ngevals)
    ccall((:IDAGetNumGEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevals)
end

function IDAGetRootInfo(ida_mem, rootsfound)
    ccall((:IDAGetRootInfo, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootsfound)
end

function IDAGetIntegratorStats(ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:IDAGetIntegratorStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem, nniters)
    ccall((:IDAGetNumNonlinSolvIters, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem, nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nncfails)
end

function IDAGetNonlinSolvStats(ida_mem, nniters, nncfails)
    ccall((:IDAGetNonlinSolvStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nniters, nncfails)
end

function IDAGetReturnFlagName(flag)
    ccall((:IDAGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDAFree(ida_mem)
    ccall((:IDAFree, libsundials_idas), Cvoid, (Ref{IDAMemPtr},), ida_mem)
end

function IDASetJacTimesResFn(ida_mem, jtimesResFn)
    ccall((:IDASetJacTimesResFn, libsundials_idas), Cint, (IDAMemPtr, IDAResFn), ida_mem, jtimesResFn)
end

function IDAQuadInit(ida_mem, rhsQ, yQ0)
    ccall((:IDAQuadInit, libsundials_idas), Cint, (IDAMemPtr, IDAQuadRhsFn, N_Vector), ida_mem, rhsQ, yQ0)
end

function IDAQuadReInit(ida_mem, yQ0)
    ccall((:IDAQuadReInit, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, yQ0)
end

function IDAQuadSStolerances(ida_mem, reltolQ, abstolQ)
    ccall((:IDAQuadSStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, realtype), ida_mem, reltolQ, abstolQ)
end

function IDAQuadSVtolerances(ida_mem, reltolQ, abstolQ)
    ccall((:IDAQuadSVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector), ida_mem, reltolQ, abstolQ)
end

function IDASetQuadErrCon(ida_mem, errconQ)
    ccall((:IDASetQuadErrCon, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, errconQ)
end

function IDAGetQuad(ida_mem, t, yQout)
    ccall((:IDAGetQuad, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, N_Vector), ida_mem, t, yQout)
end

function IDAGetQuadDky(ida_mem, t, k, dky)
    ccall((:IDAGetQuadDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetQuadNumRhsEvals(ida_mem, nrhsQevals)
    ccall((:IDAGetQuadNumRhsEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem, nQetfails)
    ccall((:IDAGetQuadNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nQetfails)
end

function IDAGetQuadErrWeights(ida_mem, eQweight)
    ccall((:IDAGetQuadErrWeights, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, eQweight)
end

function IDAGetQuadStats(ida_mem, nrhsQevals, nQetfails)
    ccall((:IDAGetQuadStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nrhsQevals, nQetfails)
end

function IDAQuadFree(ida_mem)
    ccall((:IDAQuadFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function IDASensInit(ida_mem, Ns, ism, resS, yS0, ypS0)
    ccall((:IDASensInit, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint, IDASensResFn, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, Ns, ism, resS, yS0, ypS0)
end

function IDASensReInit(ida_mem, ism, yS0, ypS0)
    ccall((:IDASensReInit, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, ism, yS0, ypS0)
end

function IDASensSStolerances(ida_mem, reltolS, abstolS)
    ccall((:IDASensSStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}), ida_mem, reltolS, abstolS)
end

function IDASensSVtolerances(ida_mem, reltolS, abstolS)
    ccall((:IDASensSVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{N_Vector}), ida_mem, reltolS, abstolS)
end

function IDASensEEtolerances(ida_mem)
    ccall((:IDASensEEtolerances, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDAGetSensConsistentIC(ida_mem, yyS0, ypS0)
    ccall((:IDAGetSensConsistentIC, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, yyS0, ypS0)
end

function IDASetSensDQMethod(ida_mem, DQtype, DQrhomax)
    ccall((:IDASetSensDQMethod, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, DQtype, DQrhomax)
end

function IDASetSensErrCon(ida_mem, errconS)
    ccall((:IDASetSensErrCon, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, errconS)
end

function IDASetSensMaxNonlinIters(ida_mem, maxcorS)
    ccall((:IDASetSensMaxNonlinIters, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxcorS)
end

function IDASetSensParams(ida_mem, p, pbar, plist)
    ccall((:IDASetSensParams, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Ptr{realtype}, Ptr{Cint}), ida_mem, p, pbar, plist)
end

function IDASetNonlinearSolverSensSim(ida_mem, NLS)
    ccall((:IDASetNonlinearSolverSensSim, libsundials_idas), Cint, (IDAMemPtr, SUNNonlinearSolver), ida_mem, NLS)
end

function IDASetNonlinearSolverSensStg(ida_mem, NLS)
    ccall((:IDASetNonlinearSolverSensStg, libsundials_idas), Cint, (IDAMemPtr, SUNNonlinearSolver), ida_mem, NLS)
end

function IDASensToggleOff(ida_mem)
    ccall((:IDASensToggleOff, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDAGetSens(ida_mem, tret, yySout)
    ccall((:IDAGetSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Ptr{N_Vector}), ida_mem, tret, yySout)
end

function IDAGetSens1(ida_mem, tret, is, yySret)
    ccall((:IDAGetSens1, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Cint, N_Vector), ida_mem, tret, is, yySret)
end

function IDAGetSensDky(ida_mem, t, k, dkyS)
    ccall((:IDAGetSensDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Ptr{N_Vector}), ida_mem, t, k, dkyS)
end

function IDAGetSensDky1(ida_mem, t, k, is, dkyS)
    ccall((:IDAGetSensDky1, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Cint, N_Vector), ida_mem, t, k, is, dkyS)
end

function IDAGetSensNumResEvals(ida_mem, nresSevals)
    ccall((:IDAGetSensNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem, nresevalsS)
    ccall((:IDAGetNumResEvalsSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem, nSetfails)
    ccall((:IDAGetSensNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem, nlinsetupsS)
    ccall((:IDAGetSensNumLinSolvSetups, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem, eSweight)
    ccall((:IDAGetSensErrWeights, libsundials_idas), Cint, (IDAMemPtr, N_Vector_S), ida_mem, eSweight)
end

function IDAGetSensStats(ida_mem, nresSevals, nresevalsS, nSetfails, nlinsetupsS)
    ccall((:IDAGetSensStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), ida_mem, nresSevals, nresevalsS, nSetfails, nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem, nSniters)
    ccall((:IDAGetSensNumNonlinSolvIters, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem, nSncfails)
    ccall((:IDAGetSensNumNonlinSolvConvFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem, nSniters, nSncfails)
    ccall((:IDAGetSensNonlinSolvStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nSniters, nSncfails)
end

function IDASensFree(ida_mem)
    ccall((:IDASensFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function IDAQuadSensInit(ida_mem, resQS, yQS0)
    ccall((:IDAQuadSensInit, libsundials_idas), Cint, (IDAMemPtr, IDAQuadSensRhsFn, Ptr{N_Vector}), ida_mem, resQS, yQS0)
end

function IDAQuadSensReInit(ida_mem, yQS0)
    ccall((:IDAQuadSensReInit, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, yQS0)
end

function IDAQuadSensSStolerances(ida_mem, reltolQS, abstolQS)
    ccall((:IDAQuadSensSStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}), ida_mem, reltolQS, abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem, reltolQS, abstolQS)
    ccall((:IDAQuadSensSVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{N_Vector}), ida_mem, reltolQS, abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem)
    ccall((:IDAQuadSensEEtolerances, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDASetQuadSensErrCon(ida_mem, errconQS)
    ccall((:IDASetQuadSensErrCon, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, errconQS)
end

function IDAGetQuadSens(ida_mem, tret, yyQSout)
    ccall((:IDAGetQuadSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Ptr{N_Vector}), ida_mem, tret, yyQSout)
end

function IDAGetQuadSens1(ida_mem, tret, is, yyQSret)
    ccall((:IDAGetQuadSens1, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Cint, N_Vector), ida_mem, tret, is, yyQSret)
end

function IDAGetQuadSensDky(ida_mem, t, k, dkyQS)
    ccall((:IDAGetQuadSensDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Ptr{N_Vector}), ida_mem, t, k, dkyQS)
end

function IDAGetQuadSensDky1(ida_mem, t, k, is, dkyQS)
    ccall((:IDAGetQuadSensDky1, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Cint, N_Vector), ida_mem, t, k, is, dkyQS)
end

function IDAGetQuadSensNumRhsEvals(ida_mem, nrhsQSevals)
    ccall((:IDAGetQuadSensNumRhsEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem, nQSetfails)
    ccall((:IDAGetQuadSensNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem, eQSweight)
    ccall((:IDAGetQuadSensErrWeights, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, eQSweight)
end

function IDAGetQuadSensStats(ida_mem, nrhsQSevals, nQSetfails)
    ccall((:IDAGetQuadSensStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nrhsQSevals, nQSetfails)
end

function IDAQuadSensFree(ida_mem)
    ccall((:IDAQuadSensFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function IDAAdjInit(ida_mem, steps, interp)
    ccall((:IDAAdjInit, libsundials_idas), Cint, (IDAMemPtr, Clong, Cint), ida_mem, steps, interp)
end

function IDAAdjReInit(ida_mem)
    ccall((:IDAAdjReInit, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDAAdjFree(ida_mem)
    ccall((:IDAAdjFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function IDACreateB(ida_mem, which)
    ccall((:IDACreateB, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, which)
end

function IDAInitB(ida_mem, which, resB, tB0, yyB0, ypB0)
    ccall((:IDAInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAResFnB, realtype, N_Vector, N_Vector), ida_mem, which, resB, tB0, yyB0, ypB0)
end

function IDAInitBS(ida_mem, which, resS, tB0, yyB0, ypB0)
    ccall((:IDAInitBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAResFnBS, realtype, N_Vector, N_Vector), ida_mem, which, resS, tB0, yyB0, ypB0)
end

function IDAReInitB(ida_mem, which, tB0, yyB0, ypB0)
    ccall((:IDAReInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector, N_Vector), ida_mem, which, tB0, yyB0, ypB0)
end

function IDASStolerancesB(ida_mem, which, relTolB, absTolB)
    ccall((:IDASStolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, realtype), ida_mem, which, relTolB, absTolB)
end

function IDASVtolerancesB(ida_mem, which, relTolB, absTolB)
    ccall((:IDASVtolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector), ida_mem, which, relTolB, absTolB)
end

function IDAQuadInitB(ida_mem, which, rhsQB, yQB0)
    ccall((:IDAQuadInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAQuadRhsFnB, N_Vector), ida_mem, which, rhsQB, yQB0)
end

function IDAQuadInitBS(ida_mem, which, rhsQS, yQB0)
    ccall((:IDAQuadInitBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAQuadRhsFnBS, N_Vector), ida_mem, which, rhsQS, yQB0)
end

function IDAQuadReInitB(ida_mem, which, yQB0)
    ccall((:IDAQuadReInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector), ida_mem, which, yQB0)
end

function IDAQuadSStolerancesB(ida_mem, which, reltolQB, abstolQB)
    ccall((:IDAQuadSStolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, realtype), ida_mem, which, reltolQB, abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem, which, reltolQB, abstolQB)
    ccall((:IDAQuadSVtolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector), ida_mem, which, reltolQB, abstolQB)
end

function IDACalcICB(ida_mem, which, tout1, yy0, yp0)
    ccall((:IDACalcICB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector, N_Vector), ida_mem, which, tout1, yy0, yp0)
end

function IDACalcICBS(ida_mem, which, tout1, yy0, yp0, yyS0, ypS0)
    ccall((:IDACalcICBS, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, which, tout1, yy0, yp0, yyS0, ypS0)
end

function IDASolveF(ida_mem, tout, tret, yret, ypret, itask, ncheckPtr)
    ccall((:IDASolveF, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint, Ptr{Cint}), ida_mem, tout, tret, yret, ypret, itask, ncheckPtr)
end

function IDASolveB(ida_mem, tBout, itaskB)
    ccall((:IDASolveB, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint), ida_mem, tBout, itaskB)
end

function IDAAdjSetNoSensi(ida_mem)
    ccall((:IDAAdjSetNoSensi, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDASetUserDataB(ida_mem, which, user_dataB)
    ccall((:IDASetUserDataB, libsundials_idas), Cint, (IDAMemPtr, Cint, Any), ida_mem, which, user_dataB)
end

function IDASetMaxOrdB(ida_mem, which, maxordB)
    ccall((:IDASetMaxOrdB, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint), ida_mem, which, maxordB)
end

function IDASetMaxNumStepsB(ida_mem, which, mxstepsB)
    ccall((:IDASetMaxNumStepsB, libsundials_idas), Cint, (IDAMemPtr, Cint, Clong), ida_mem, which, mxstepsB)
end

function IDASetInitStepB(ida_mem, which, hinB)
    ccall((:IDASetInitStepB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, hinB)
end

function IDASetMaxStepB(ida_mem, which, hmaxB)
    ccall((:IDASetMaxStepB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, hmaxB)
end

function IDASetSuppressAlgB(ida_mem, which, suppressalgB)
    ccall((:IDASetSuppressAlgB, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint), ida_mem, which, suppressalgB)
end

function IDASetIdB(ida_mem, which, idB)
    ccall((:IDASetIdB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector), ida_mem, which, idB)
end

function IDASetConstraintsB(ida_mem, which, constraintsB)
    ccall((:IDASetConstraintsB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector), ida_mem, which, constraintsB)
end

function IDASetQuadErrConB(ida_mem, which, errconQB)
    ccall((:IDASetQuadErrConB, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint), ida_mem, which, errconQB)
end

function IDASetNonlinearSolverB(ida_mem, which, NLS)
    ccall((:IDASetNonlinearSolverB, libsundials_idas), Cint, (IDAMemPtr, Cint, SUNNonlinearSolver), ida_mem, which, NLS)
end

function IDAGetB(ida_mem, which, tret, yy, yp)
    ccall((:IDAGetB, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, N_Vector, N_Vector), ida_mem, which, tret, yy, yp)
end

function IDAGetQuadB(ida_mem, which, tret, qB)
    ccall((:IDAGetQuadB, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, N_Vector), ida_mem, which, tret, qB)
end

function IDAGetAdjIDABmem(ida_mem, which)
    ccall((:IDAGetAdjIDABmem, libsundials_idas), Ptr{Cvoid}, (IDAMemPtr, Cint), ida_mem, which)
end

function IDAGetConsistentICB(ida_mem, which, yyB0, ypB0)
    ccall((:IDAGetConsistentICB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector, N_Vector), ida_mem, which, yyB0, ypB0)
end

function IDAGetAdjY(ida_mem, t, yy, yp)
    ccall((:IDAGetAdjY, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector, N_Vector), ida_mem, t, yy, yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem, ckpnt)
    ccall((:IDAGetAdjCheckPointsInfo, libsundials_idas), Cint, (IDAMemPtr, Ptr{IDAadjCheckPointRec}), ida_mem, ckpnt)
end

function IDASetJacTimesResFnB(ida_mem, which, jtimesResFn)
    ccall((:IDASetJacTimesResFnB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAResFn), ida_mem, which, jtimesResFn)
end

function IDAGetAdjDataPointHermite(ida_mem, which, t, yy, yd)
    ccall((:IDAGetAdjDataPointHermite, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, N_Vector, N_Vector), ida_mem, which, t, yy, yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem, which, t, order, y)
    ccall((:IDAGetAdjDataPointPolynomial, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, Ptr{Cint}, N_Vector), ida_mem, which, t, order, y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem, addr)
    ccall((:IDAGetAdjCurrentCheckPoint, libsundials_idas), Cint, (IDAMemPtr, Ptr{Ptr{Cvoid}}), ida_mem, addr)
end
# Julia wrapper for header: idas_bbdpre.h
# Automatically generated using Clang.jl


function IDABBDPrecInit(ida_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_yy, Gres, Gcomm)
    ccall((:IDABBDPrecInit, libsundials_idas), Cint, (IDAMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFn, IDABBDCommFn), ida_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_yy, Gres, Gcomm)
end

function IDABBDPrecReInit(ida_mem, mudq, mldq, dq_rel_yy)
    ccall((:IDABBDPrecReInit, libsundials_idas), Cint, (IDAMemPtr, sunindextype, sunindextype, realtype), ida_mem, mudq, mldq, dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem, lenrwBBDP, leniwBBDP)
    ccall((:IDABBDPrecGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwBBDP, leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem, ngevalsBBDP)
    ccall((:IDABBDPrecGetNumGfnEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevalsBBDP)
end

function IDABBDPrecInitB(ida_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dq_rel_yyB, GresB, GcommB)
    ccall((:IDABBDPrecInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFnB, IDABBDCommFnB), ida_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dq_rel_yyB, GresB, GcommB)
end

function IDABBDPrecReInitB(ida_mem, which, mudqB, mldqB, dq_rel_yyB)
    ccall((:IDABBDPrecReInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, sunindextype, sunindextype, realtype), ida_mem, which, mudqB, mldqB, dq_rel_yyB)
end
# Julia wrapper for header: idas_direct.h
# Automatically generated using Clang.jl


function IDADlsSetLinearSolver(ida_mem, LS, A)
    ccall((:IDADlsSetLinearSolver, libsundials_idas), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDADlsSetJacFn(ida_mem, jac)
    ccall((:IDADlsSetJacFn, libsundials_idas), Cint, (IDAMemPtr, IDADlsJacFn), ida_mem, jac)
end

function IDADlsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDADlsGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem, njevals)
    ccall((:IDADlsGetNumJacEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDADlsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDADlsGetNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDADlsGetLastFlag(ida_mem, flag)
    ccall((:IDADlsGetLastFlag, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDADlsGetReturnFlagName(flag)
    ccall((:IDADlsGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDADlsSetLinearSolverB(ida_mem, which, LS, A)
    ccall((:IDADlsSetLinearSolverB, libsundials_idas), Cint, (IDAMemPtr, Cint, SUNLinearSolver, SUNMatrix), ida_mem, which, LS, A)
end

function IDADlsSetJacFnB(ida_mem, which, jacB)
    ccall((:IDADlsSetJacFnB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDADlsJacFnB), ida_mem, which, jacB)
end

function IDADlsSetJacFnBS(ida_mem, which, jacBS)
    ccall((:IDADlsSetJacFnBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDADlsJacFnBS), ida_mem, which, jacBS)
end
# Julia wrapper for header: idas_ls.h
# Automatically generated using Clang.jl


function IDASetLinearSolver(ida_mem, LS, A)
    ccall((:IDASetLinearSolver, libsundials_idas), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDASetJacFn(ida_mem, jac)
    ccall((:IDASetJacFn, libsundials_idas), Cint, (IDAMemPtr, IDALsJacFn), ida_mem, jac)
end

function IDASetPreconditioner(ida_mem, pset, psolve)
    ccall((:IDASetPreconditioner, libsundials_idas), Cint, (IDAMemPtr, IDALsPrecSetupFn, IDALsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASetJacTimes(ida_mem, jtsetup, jtimes)
    ccall((:IDASetJacTimes, libsundials_idas), Cint, (IDAMemPtr, IDALsJacTimesSetupFn, IDALsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASetEpsLin(ida_mem, eplifac)
    ccall((:IDASetEpsLin, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, eplifac)
end

function IDASetLinearSolutionScaling(ida_mem, onoff)
    ccall((:IDASetLinearSolutionScaling, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, onoff)
end

function IDASetIncrementFactor(ida_mem, dqincfac)
    ccall((:IDASetIncrementFactor, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, dqincfac)
end

function IDAGetLinWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDAGetLinWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDAGetNumJacEvals(ida_mem, njevals)
    ccall((:IDAGetNumJacEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDAGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDAGetNumPrecEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npevals)
end

function IDAGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDAGetNumPrecSolves, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npsolves)
end

function IDAGetNumLinIters(ida_mem, nliters)
    ccall((:IDAGetNumLinIters, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nliters)
end

function IDAGetNumLinConvFails(ida_mem, nlcfails)
    ccall((:IDAGetNumLinConvFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlcfails)
end

function IDAGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDAGetNumJTSetupEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njtsetups)
end

function IDAGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDAGetNumJtimesEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njvevals)
end

function IDAGetNumLinResEvals(ida_mem, nrevalsLS)
    ccall((:IDAGetNumLinResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDAGetLastLinFlag(ida_mem, flag)
    ccall((:IDAGetLastLinFlag, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDAGetLinReturnFlagName(flag)
    ccall((:IDAGetLinReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDASetLinearSolverB(ida_mem, which, LS, A)
    ccall((:IDASetLinearSolverB, libsundials_idas), Cint, (IDAMemPtr, Cint, SUNLinearSolver, SUNMatrix), ida_mem, which, LS, A)
end

function IDASetJacFnB(ida_mem, which, jacB)
    ccall((:IDASetJacFnB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDALsJacFnB), ida_mem, which, jacB)
end

function IDASetJacFnBS(ida_mem, which, jacBS)
    ccall((:IDASetJacFnBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDALsJacFnBS), ida_mem, which, jacBS)
end

function IDASetEpsLinB(ida_mem, which, eplifacB)
    ccall((:IDASetEpsLinB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, eplifacB)
end

function IDASetLinearSolutionScalingB(ida_mem, which, onoffB)
    ccall((:IDASetLinearSolutionScalingB, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint), ida_mem, which, onoffB)
end

function IDASetIncrementFactorB(ida_mem, which, dqincfacB)
    ccall((:IDASetIncrementFactorB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, dqincfacB)
end

function IDASetPreconditionerB(ida_mem, which, psetB, psolveB)
    ccall((:IDASetPreconditionerB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDALsPrecSetupFnB, IDALsPrecSolveFnB), ida_mem, which, psetB, psolveB)
end

function IDASetPreconditionerBS(ida_mem, which, psetBS, psolveBS)
    ccall((:IDASetPreconditionerBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDALsPrecSetupFnBS, IDALsPrecSolveFnBS), ida_mem, which, psetBS, psolveBS)
end

function IDASetJacTimesB(ida_mem, which, jtsetupB, jtimesB)
    ccall((:IDASetJacTimesB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDALsJacTimesSetupFnB, IDALsJacTimesVecFnB), ida_mem, which, jtsetupB, jtimesB)
end

function IDASetJacTimesBS(ida_mem, which, jtsetupBS, jtimesBS)
    ccall((:IDASetJacTimesBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDALsJacTimesSetupFnBS, IDALsJacTimesVecFnBS), ida_mem, which, jtsetupBS, jtimesBS)
end
# Julia wrapper for header: idas_spils.h
# Automatically generated using Clang.jl


function IDASpilsSetLinearSolver(ida_mem, LS)
    ccall((:IDASpilsSetLinearSolver, libsundials_idas), Cint, (IDAMemPtr, SUNLinearSolver), ida_mem, LS)
end

function IDASpilsSetPreconditioner(ida_mem, pset, psolve)
    ccall((:IDASpilsSetPreconditioner, libsundials_idas), Cint, (IDAMemPtr, IDASpilsPrecSetupFn, IDASpilsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASpilsSetJacTimes(ida_mem, jtsetup, jtimes)
    ccall((:IDASpilsSetJacTimes, libsundials_idas), Cint, (IDAMemPtr, IDASpilsJacTimesSetupFn, IDASpilsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASpilsSetEpsLin(ida_mem, eplifac)
    ccall((:IDASpilsSetEpsLin, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem, dqincfac)
    ccall((:IDASpilsSetIncrementFactor, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDASpilsGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDASpilsGetNumPrecEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDASpilsGetNumPrecSolves, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npsolves)
end

function IDASpilsGetNumLinIters(ida_mem, nliters)
    ccall((:IDASpilsGetNumLinIters, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nliters)
end

function IDASpilsGetNumConvFails(ida_mem, nlcfails)
    ccall((:IDASpilsGetNumConvFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlcfails)
end

function IDASpilsGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDASpilsGetNumJTSetupEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njtsetups)
end

function IDASpilsGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDASpilsGetNumJtimesEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njvevals)
end

function IDASpilsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDASpilsGetNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem, flag)
    ccall((:IDASpilsGetLastFlag, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDASpilsGetReturnFlagName(flag)
    ccall((:IDASpilsGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDASpilsSetLinearSolverB(ida_mem, which, LS)
    ccall((:IDASpilsSetLinearSolverB, libsundials_idas), Cint, (IDAMemPtr, Cint, SUNLinearSolver), ida_mem, which, LS)
end

function IDASpilsSetEpsLinB(ida_mem, which, eplifacB)
    ccall((:IDASpilsSetEpsLinB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, eplifacB)
end

function IDASpilsSetIncrementFactorB(ida_mem, which, dqincfacB)
    ccall((:IDASpilsSetIncrementFactorB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem, which, psetB, psolveB)
    ccall((:IDASpilsSetPreconditionerB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsPrecSetupFnB, IDASpilsPrecSolveFnB), ida_mem, which, psetB, psolveB)
end

function IDASpilsSetPreconditionerBS(ida_mem, which, psetBS, psolveBS)
    ccall((:IDASpilsSetPreconditionerBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsPrecSetupFnBS, IDASpilsPrecSolveFnBS), ida_mem, which, psetBS, psolveBS)
end

function IDASpilsSetJacTimesB(ida_mem, which, jtsetupB, jtimesB)
    ccall((:IDASpilsSetJacTimesB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsJacTimesSetupFnB, IDASpilsJacTimesVecFnB), ida_mem, which, jtsetupB, jtimesB)
end

function IDASpilsSetJacTimesBS(ida_mem, which, jtsetupBS, jtimesBS)
    ccall((:IDASpilsSetJacTimesBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsJacTimesSetupFnBS, IDASpilsJacTimesVecFnBS), ida_mem, which, jtsetupBS, jtimesBS)
end
