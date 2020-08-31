# Julia wrapper for header: arkode.h
# Automatically generated using Clang.jl

# Julia wrapper for header: arkode_arkstep.h
# Automatically generated using Clang.jl


function ARKStepCreate(fe, fi, t0, y0)
    ccall((:ARKStepCreate, libsundials_arkode), ARKStepMemPtr, (ARKRhsFn, ARKRhsFn, realtype, N_Vector), fe, fi, t0, y0)
end

function ARKStepResize(arkode_mem, ynew, hscale, t0, resize, resize_data)
    ccall((:ARKStepResize, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector, realtype, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, hscale, t0, resize, resize_data)
end

function ARKStepReInit(arkode_mem, fe, fi, t0, y0)
    ccall((:ARKStepReInit, libsundials_arkode), Cint, (ARKStepMemPtr, ARKRhsFn, ARKRhsFn, realtype, N_Vector), arkode_mem, fe, fi, t0, y0)
end

function ARKStepSStolerances(arkode_mem, reltol, abstol)
    ccall((:ARKStepSStolerances, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, realtype), arkode_mem, reltol, abstol)
end

function ARKStepSVtolerances(arkode_mem, reltol, abstol)
    ccall((:ARKStepSVtolerances, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, N_Vector), arkode_mem, reltol, abstol)
end

function ARKStepWFtolerances(arkode_mem, efun)
    ccall((:ARKStepWFtolerances, libsundials_arkode), Cint, (ARKStepMemPtr, ARKEwtFn), arkode_mem, efun)
end

function ARKStepResStolerance(arkode_mem, rabstol)
    ccall((:ARKStepResStolerance, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, rabstol)
end

function ARKStepResVtolerance(arkode_mem, rabstol)
    ccall((:ARKStepResVtolerance, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, rabstol)
end

function ARKStepResFtolerance(arkode_mem, rfun)
    ccall((:ARKStepResFtolerance, libsundials_arkode), Cint, (ARKStepMemPtr, ARKRwtFn), arkode_mem, rfun)
end

function ARKStepSetLinearSolver(arkode_mem, LS, A)
    ccall((:ARKStepSetLinearSolver, libsundials_arkode), Cint, (ARKStepMemPtr, SUNLinearSolver, SUNMatrix), arkode_mem, LS, A)
end

function ARKStepSetMassLinearSolver(arkode_mem, LS, M, time_dep)
    ccall((:ARKStepSetMassLinearSolver, libsundials_arkode), Cint, (ARKStepMemPtr, SUNLinearSolver, SUNMatrix, Cint), arkode_mem, LS, M, time_dep)
end

function ARKStepRootInit(arkode_mem, nrtfn, g)
    ccall((:ARKStepRootInit, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function ARKStepSetDefaults(arkode_mem)
    ccall((:ARKStepSetDefaults, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ARKStepSetOptimalParams(arkode_mem)
    ccall((:ARKStepSetOptimalParams, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ARKStepSetOrder(arkode_mem, maxord)
    ccall((:ARKStepSetOrder, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxord)
end

function ARKStepSetInterpolantType(arkode_mem, itype)
    ccall((:ARKStepSetInterpolantType, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, itype)
end

function ARKStepSetInterpolantDegree(arkode_mem, degree)
    ccall((:ARKStepSetInterpolantDegree, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, degree)
end

function ARKStepSetDenseOrder(arkode_mem, dord)
    ccall((:ARKStepSetDenseOrder, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, dord)
end

function ARKStepSetNonlinearSolver(arkode_mem, NLS)
    ccall((:ARKStepSetNonlinearSolver, libsundials_arkode), Cint, (ARKStepMemPtr, SUNNonlinearSolver), arkode_mem, NLS)
end

function ARKStepSetLinear(arkode_mem, timedepend)
    ccall((:ARKStepSetLinear, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, timedepend)
end

function ARKStepSetNonlinear(arkode_mem)
    ccall((:ARKStepSetNonlinear, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ARKStepSetExplicit(arkode_mem)
    ccall((:ARKStepSetExplicit, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ARKStepSetImplicit(arkode_mem)
    ccall((:ARKStepSetImplicit, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ARKStepSetImEx(arkode_mem)
    ccall((:ARKStepSetImEx, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ARKStepSetTables(arkode_mem, q, p, Bi, Be)
    ccall((:ARKStepSetTables, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, Cint, ARKodeButcherTable, ARKodeButcherTable), arkode_mem, q, p, Bi, Be)
end

function ARKStepSetTableNum(arkode_mem, itable, etable)
    ccall((:ARKStepSetTableNum, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, Cint), arkode_mem, itable, etable)
end

function ARKStepSetCFLFraction(arkode_mem, cfl_frac)
    ccall((:ARKStepSetCFLFraction, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, cfl_frac)
end

function ARKStepSetSafetyFactor(arkode_mem, safety)
    ccall((:ARKStepSetSafetyFactor, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, safety)
end

function ARKStepSetErrorBias(arkode_mem, bias)
    ccall((:ARKStepSetErrorBias, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, bias)
end

function ARKStepSetMaxGrowth(arkode_mem, mx_growth)
    ccall((:ARKStepSetMaxGrowth, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, mx_growth)
end

function ARKStepSetMinReduction(arkode_mem, eta_min)
    ccall((:ARKStepSetMinReduction, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, eta_min)
end

function ARKStepSetFixedStepBounds(arkode_mem, lb, ub)
    ccall((:ARKStepSetFixedStepBounds, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, realtype), arkode_mem, lb, ub)
end

function ARKStepSetAdaptivityMethod(arkode_mem, imethod, idefault, pq, adapt_params)
    ccall((:ARKStepSetAdaptivityMethod, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, Cint, Cint, Ptr{realtype}), arkode_mem, imethod, idefault, pq, adapt_params)
end

function ARKStepSetAdaptivityFn(arkode_mem, hfun, h_data)
    ccall((:ARKStepSetAdaptivityFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKAdaptFn, Ptr{Cvoid}), arkode_mem, hfun, h_data)
end

function ARKStepSetMaxFirstGrowth(arkode_mem, etamx1)
    ccall((:ARKStepSetMaxFirstGrowth, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, etamx1)
end

function ARKStepSetMaxEFailGrowth(arkode_mem, etamxf)
    ccall((:ARKStepSetMaxEFailGrowth, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, etamxf)
end

function ARKStepSetSmallNumEFails(arkode_mem, small_nef)
    ccall((:ARKStepSetSmallNumEFails, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, small_nef)
end

function ARKStepSetMaxCFailGrowth(arkode_mem, etacf)
    ccall((:ARKStepSetMaxCFailGrowth, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, etacf)
end

function ARKStepSetNonlinCRDown(arkode_mem, crdown)
    ccall((:ARKStepSetNonlinCRDown, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, crdown)
end

function ARKStepSetNonlinRDiv(arkode_mem, rdiv)
    ccall((:ARKStepSetNonlinRDiv, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, rdiv)
end

function ARKStepSetDeltaGammaMax(arkode_mem, dgmax)
    ccall((:ARKStepSetDeltaGammaMax, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, dgmax)
end

function ARKStepSetMaxStepsBetweenLSet(arkode_mem, msbp)
    ccall((:ARKStepSetMaxStepsBetweenLSet, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, msbp)
end

function ARKStepSetPredictorMethod(arkode_mem, method)
    ccall((:ARKStepSetPredictorMethod, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, method)
end

function ARKStepSetStabilityFn(arkode_mem, EStab, estab_data)
    ccall((:ARKStepSetStabilityFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKExpStabFn, Ptr{Cvoid}), arkode_mem, EStab, estab_data)
end

function ARKStepSetMaxErrTestFails(arkode_mem, maxnef)
    ccall((:ARKStepSetMaxErrTestFails, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxnef)
end

function ARKStepSetMaxNonlinIters(arkode_mem, maxcor)
    ccall((:ARKStepSetMaxNonlinIters, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxcor)
end

function ARKStepSetMaxConvFails(arkode_mem, maxncf)
    ccall((:ARKStepSetMaxConvFails, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxncf)
end

function ARKStepSetNonlinConvCoef(arkode_mem, nlscoef)
    ccall((:ARKStepSetNonlinConvCoef, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, nlscoef)
end

function ARKStepSetConstraints(arkode_mem, constraints)
    ccall((:ARKStepSetConstraints, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, constraints)
end

function ARKStepSetMaxNumSteps(arkode_mem, mxsteps)
    ccall((:ARKStepSetMaxNumSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Clong), arkode_mem, mxsteps)
end

function ARKStepSetMaxHnilWarns(arkode_mem, mxhnil)
    ccall((:ARKStepSetMaxHnilWarns, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, mxhnil)
end

function ARKStepSetInitStep(arkode_mem, hin)
    ccall((:ARKStepSetInitStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hin)
end

function ARKStepSetMinStep(arkode_mem, hmin)
    ccall((:ARKStepSetMinStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hmin)
end

function ARKStepSetMaxStep(arkode_mem, hmax)
    ccall((:ARKStepSetMaxStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hmax)
end

function ARKStepSetStopTime(arkode_mem, tstop)
    ccall((:ARKStepSetStopTime, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, tstop)
end

function ARKStepSetFixedStep(arkode_mem, hfixed)
    ccall((:ARKStepSetFixedStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hfixed)
end

function ARKStepSetMaxNumConstrFails(arkode_mem, maxfails)
    ccall((:ARKStepSetMaxNumConstrFails, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxfails)
end

function ARKStepSetRootDirection(arkode_mem, rootdir)
    ccall((:ARKStepSetRootDirection, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Cint}), arkode_mem, rootdir)
end

function ARKStepSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKStepSetNoInactiveRootWarn, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ARKStepSetErrHandlerFn(arkode_mem, ehfun, eh_data)
    ccall((:ARKStepSetErrHandlerFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function ARKStepSetErrFile(arkode_mem, errfp)
    ccall((:ARKStepSetErrFile, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, errfp)
end

function ARKStepSetUserData(arkode_mem, user_data)
    ccall((:ARKStepSetUserData, libsundials_arkode), Cint, (ARKStepMemPtr, Any), arkode_mem, user_data)
end

function ARKStepSetDiagnostics(arkode_mem, diagfp)
    ccall((:ARKStepSetDiagnostics, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, diagfp)
end

function ARKStepSetPostprocessStepFn(arkode_mem, ProcessStep)
    ccall((:ARKStepSetPostprocessStepFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKPostProcessFn), arkode_mem, ProcessStep)
end

function ARKStepSetPostprocessStageFn(arkode_mem, ProcessStage)
    ccall((:ARKStepSetPostprocessStageFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKPostProcessFn), arkode_mem, ProcessStage)
end

function ARKStepSetStagePredictFn(arkode_mem, PredictStage)
    ccall((:ARKStepSetStagePredictFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKStepStagePredictFn), arkode_mem, PredictStage)
end

function ARKStepSetJacFn(arkode_mem, jac)
    ccall((:ARKStepSetJacFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKLsJacFn), arkode_mem, jac)
end

function ARKStepSetMassFn(arkode_mem, mass)
    ccall((:ARKStepSetMassFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKLsMassFn), arkode_mem, mass)
end

function ARKStepSetMaxStepsBetweenJac(arkode_mem, msbj)
    ccall((:ARKStepSetMaxStepsBetweenJac, libsundials_arkode), Cint, (ARKStepMemPtr, Clong), arkode_mem, msbj)
end

function ARKStepSetLinearSolutionScaling(arkode_mem, onoff)
    ccall((:ARKStepSetLinearSolutionScaling, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, onoff)
end

function ARKStepSetEpsLin(arkode_mem, eplifac)
    ccall((:ARKStepSetEpsLin, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, eplifac)
end

function ARKStepSetMassEpsLin(arkode_mem, eplifac)
    ccall((:ARKStepSetMassEpsLin, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, eplifac)
end

function ARKStepSetPreconditioner(arkode_mem, psetup, psolve)
    ccall((:ARKStepSetPreconditioner, libsundials_arkode), Cint, (ARKStepMemPtr, ARKLsPrecSetupFn, ARKLsPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKStepSetMassPreconditioner(arkode_mem, psetup, psolve)
    ccall((:ARKStepSetMassPreconditioner, libsundials_arkode), Cint, (ARKStepMemPtr, ARKLsMassPrecSetupFn, ARKLsMassPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKStepSetJacTimes(arkode_mem, jtsetup, jtimes)
    ccall((:ARKStepSetJacTimes, libsundials_arkode), Cint, (ARKStepMemPtr, ARKLsJacTimesSetupFn, ARKLsJacTimesVecFn), arkode_mem, jtsetup, jtimes)
end

function ARKStepSetJacTimesRhsFn(arkode_mem, jtimesRhsFn)
    ccall((:ARKStepSetJacTimesRhsFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKRhsFn), arkode_mem, jtimesRhsFn)
end

function ARKStepSetMassTimes(arkode_mem, msetup, mtimes, mtimes_data)
    ccall((:ARKStepSetMassTimes, libsundials_arkode), Cint, (ARKStepMemPtr, ARKLsMassTimesSetupFn, ARKLsMassTimesVecFn, Ptr{Cvoid}), arkode_mem, msetup, mtimes, mtimes_data)
end

function ARKStepSetLinSysFn(arkode_mem, linsys)
    ccall((:ARKStepSetLinSysFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKLsLinSysFn), arkode_mem, linsys)
end

function ARKStepEvolve(arkode_mem, tout, yout, tret, itask)
    ccall((:ARKStepEvolve, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function ARKStepGetDky(arkode_mem, t, k, dky)
    ccall((:ARKStepGetDky, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function ARKStepGetNumExpSteps(arkode_mem, expsteps)
    ccall((:ARKStepGetNumExpSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, expsteps)
end

function ARKStepGetNumAccSteps(arkode_mem, accsteps)
    ccall((:ARKStepGetNumAccSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, accsteps)
end

function ARKStepGetNumStepAttempts(arkode_mem, step_attempts)
    ccall((:ARKStepGetNumStepAttempts, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, step_attempts)
end

function ARKStepGetNumRhsEvals(arkode_mem, nfe_evals, nfi_evals)
    ccall((:ARKStepGetNumRhsEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, nfe_evals, nfi_evals)
end

function ARKStepGetNumLinSolvSetups(arkode_mem, nlinsetups)
    ccall((:ARKStepGetNumLinSolvSetups, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nlinsetups)
end

function ARKStepGetNumErrTestFails(arkode_mem, netfails)
    ccall((:ARKStepGetNumErrTestFails, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, netfails)
end

function ARKStepGetCurrentButcherTables(arkode_mem, Bi, Be)
    ccall((:ARKStepGetCurrentButcherTables, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{ARKodeButcherTable}, Ptr{ARKodeButcherTable}), arkode_mem, Bi, Be)
end

function ARKStepGetEstLocalErrors(arkode_mem, ele)
    ccall((:ARKStepGetEstLocalErrors, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, ele)
end

function ARKStepGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:ARKStepGetWorkSpace, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function ARKStepGetNumSteps(arkode_mem, nsteps)
    ccall((:ARKStepGetNumSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nsteps)
end

function ARKStepGetActualInitStep(arkode_mem, hinused)
    ccall((:ARKStepGetActualInitStep, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, hinused)
end

function ARKStepGetLastStep(arkode_mem, hlast)
    ccall((:ARKStepGetLastStep, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, hlast)
end

function ARKStepGetCurrentStep(arkode_mem, hcur)
    ccall((:ARKStepGetCurrentStep, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, hcur)
end

function ARKStepGetCurrentTime(arkode_mem, tcur)
    ccall((:ARKStepGetCurrentTime, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, tcur)
end

function ARKStepGetCurrentState(arkode_mem, ycur)
    ccall((:ARKStepGetCurrentState, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{N_Vector}), arkode_mem, ycur)
end

function ARKStepGetCurrentGamma(arkode_mem, gamma)
    ccall((:ARKStepGetCurrentGamma, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, gamma)
end

function ARKStepGetTolScaleFactor(arkode_mem, tolsfac)
    ccall((:ARKStepGetTolScaleFactor, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, tolsfac)
end

function ARKStepGetErrWeights(arkode_mem, eweight)
    ccall((:ARKStepGetErrWeights, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, eweight)
end

function ARKStepGetResWeights(arkode_mem, rweight)
    ccall((:ARKStepGetResWeights, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, rweight)
end

function ARKStepGetNumGEvals(arkode_mem, ngevals)
    ccall((:ARKStepGetNumGEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, ngevals)
end

function ARKStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:ARKStepGetRootInfo, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Cint}), arkode_mem, rootsfound)
end

function ARKStepGetNumConstrFails(arkode_mem, nconstrfails)
    ccall((:ARKStepGetNumConstrFails, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nconstrfails)
end

function ARKStepGetReturnFlagName(flag)
    ccall((:ARKStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKStepWriteParameters(arkode_mem, fp)
    ccall((:ARKStepWriteParameters, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ARKStepWriteButcher(arkode_mem, fp)
    ccall((:ARKStepWriteButcher, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ARKStepGetTimestepperStats(arkode_mem, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails)
    ccall((:ARKStepGetTimestepperStats, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), arkode_mem, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails)
end

function ARKStepGetStepStats(arkode_mem, nsteps, hinused, hlast, hcur, tcur)
    ccall((:ARKStepGetStepStats, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, nsteps, hinused, hlast, hcur, tcur)
end

function ARKStepGetNumNonlinSolvIters(arkode_mem, nniters)
    ccall((:ARKStepGetNumNonlinSolvIters, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nniters)
end

function ARKStepGetNumNonlinSolvConvFails(arkode_mem, nncfails)
    ccall((:ARKStepGetNumNonlinSolvConvFails, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nncfails)
end

function ARKStepGetNonlinSolvStats(arkode_mem, nniters, nncfails)
    ccall((:ARKStepGetNonlinSolvStats, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, nniters, nncfails)
end

function ARKStepGetLinWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKStepGetLinWorkSpace, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKStepGetNumJacEvals(arkode_mem, njevals)
    ccall((:ARKStepGetNumJacEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, njevals)
end

function ARKStepGetNumPrecEvals(arkode_mem, npevals)
    ccall((:ARKStepGetNumPrecEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, npevals)
end

function ARKStepGetNumPrecSolves(arkode_mem, npsolves)
    ccall((:ARKStepGetNumPrecSolves, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, npsolves)
end

function ARKStepGetNumLinIters(arkode_mem, nliters)
    ccall((:ARKStepGetNumLinIters, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nliters)
end

function ARKStepGetNumLinConvFails(arkode_mem, nlcfails)
    ccall((:ARKStepGetNumLinConvFails, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nlcfails)
end

function ARKStepGetNumJTSetupEvals(arkode_mem, njtsetups)
    ccall((:ARKStepGetNumJTSetupEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, njtsetups)
end

function ARKStepGetNumJtimesEvals(arkode_mem, njvevals)
    ccall((:ARKStepGetNumJtimesEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, njvevals)
end

function ARKStepGetNumLinRhsEvals(arkode_mem, nfevalsLS)
    ccall((:ARKStepGetNumLinRhsEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nfevalsLS)
end

function ARKStepGetLastLinFlag(arkode_mem, flag)
    ccall((:ARKStepGetLastLinFlag, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function ARKStepGetMassWorkSpace(arkode_mem, lenrwMLS, leniwMLS)
    ccall((:ARKStepGetMassWorkSpace, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwMLS, leniwMLS)
end

function ARKStepGetNumMassSetups(arkode_mem, nmsetups)
    ccall((:ARKStepGetNumMassSetups, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmsetups)
end

function ARKStepGetNumMassMultSetups(arkode_mem, nmvsetups)
    ccall((:ARKStepGetNumMassMultSetups, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmvsetups)
end

function ARKStepGetNumMassMult(arkode_mem, nmvevals)
    ccall((:ARKStepGetNumMassMult, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmvevals)
end

function ARKStepGetNumMassSolves(arkode_mem, nmsolves)
    ccall((:ARKStepGetNumMassSolves, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmsolves)
end

function ARKStepGetNumMassPrecEvals(arkode_mem, nmpevals)
    ccall((:ARKStepGetNumMassPrecEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmpevals)
end

function ARKStepGetNumMassPrecSolves(arkode_mem, nmpsolves)
    ccall((:ARKStepGetNumMassPrecSolves, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmpsolves)
end

function ARKStepGetNumMassIters(arkode_mem, nmiters)
    ccall((:ARKStepGetNumMassIters, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmiters)
end

function ARKStepGetNumMassConvFails(arkode_mem, nmcfails)
    ccall((:ARKStepGetNumMassConvFails, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmcfails)
end

function ARKStepGetNumMTSetups(arkode_mem, nmtsetups)
    ccall((:ARKStepGetNumMTSetups, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nmtsetups)
end

function ARKStepGetLastMassFlag(arkode_mem, flag)
    ccall((:ARKStepGetLastMassFlag, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function ARKStepGetLinReturnFlagName(flag)
    ccall((:ARKStepGetLinReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKStepFree(arkode_mem)
    ccall((:ARKStepFree, libsundials_arkode), Cvoid, (Ref{ARKStepMemPtr},), arkode_mem)
end

function ARKStepPrintMem(arkode_mem, outfile)
    ccall((:ARKStepPrintMem, libsundials_arkode), Cvoid, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, outfile)
end
# Julia wrapper for header: arkode_bandpre.h
# Automatically generated using Clang.jl


function ARKBandPrecInit(arkode_mem, N, mu, ml)
    ccall((:ARKBandPrecInit, libsundials_arkode), Cint, (ARKStepMemPtr, sunindextype, sunindextype, sunindextype), arkode_mem, N, mu, ml)
end

function ARKBandPrecGetWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKBandPrecGetWorkSpace, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKBandPrecGetNumRhsEvals(arkode_mem, nfevalsBP)
    ccall((:ARKBandPrecGetNumRhsEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nfevalsBP)
end
# Julia wrapper for header: arkode_bbdpre.h
# Automatically generated using Clang.jl


function ARKBBDPrecInit(arkode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
    ccall((:ARKBBDPrecInit, libsundials_arkode), Cint, (ARKStepMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, ARKLocalFn, ARKCommFn), arkode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function ARKBBDPrecReInit(arkode_mem, mudq, mldq, dqrely)
    ccall((:ARKBBDPrecReInit, libsundials_arkode), Cint, (ARKStepMemPtr, sunindextype, sunindextype, realtype), arkode_mem, mudq, mldq, dqrely)
end

function ARKBBDPrecGetWorkSpace(arkode_mem, lenrwBBDP, leniwBBDP)
    ccall((:ARKBBDPrecGetWorkSpace, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwBBDP, leniwBBDP)
end

function ARKBBDPrecGetNumGfnEvals(arkode_mem, ngevalsBBDP)
    ccall((:ARKBBDPrecGetNumGfnEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, ngevalsBBDP)
end
# Julia wrapper for header: arkode_butcher.h
# Automatically generated using Clang.jl


function ARKodeButcherTable_Alloc(stages, embedded)
    ccall((:ARKodeButcherTable_Alloc, libsundials_arkode), ARKodeButcherTable, (Cint, Cint), stages, embedded)
end

function ARKodeButcherTable_Create(s, q, p, c, A, b, d)
    ccall((:ARKodeButcherTable_Create, libsundials_arkode), ARKodeButcherTable, (Cint, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), s, q, p, c, A, b, d)
end

function ARKodeButcherTable_Copy(B)
    ccall((:ARKodeButcherTable_Copy, libsundials_arkode), ARKodeButcherTable, (ARKodeButcherTable,), B)
end

function ARKodeButcherTable_Space(B, liw, lrw)
    ccall((:ARKodeButcherTable_Space, libsundials_arkode), Cvoid, (ARKodeButcherTable, Ptr{sunindextype}, Ptr{sunindextype}), B, liw, lrw)
end

function ARKodeButcherTable_Free(B)
    ccall((:ARKodeButcherTable_Free, libsundials_arkode), Cvoid, (ARKodeButcherTable,), B)
end

function ARKodeButcherTable_Write(B, outfile)
    ccall((:ARKodeButcherTable_Write, libsundials_arkode), Cvoid, (ARKodeButcherTable, Ptr{Cint}), B, outfile)
end

function ARKodeButcherTable_CheckOrder(B, q, p, outfile)
    ccall((:ARKodeButcherTable_CheckOrder, libsundials_arkode), Cint, (ARKodeButcherTable, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), B, q, p, outfile)
end

function ARKodeButcherTable_CheckARKOrder(B1, B2, q, p, outfile)
    ccall((:ARKodeButcherTable_CheckARKOrder, libsundials_arkode), Cint, (ARKodeButcherTable, ARKodeButcherTable, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), B1, B2, q, p, outfile)
end
# Julia wrapper for header: arkode_butcher_dirk.h
# Automatically generated using Clang.jl


function ARKodeButcherTable_LoadDIRK(imethod)
    ccall((:ARKodeButcherTable_LoadDIRK, libsundials_arkode), ARKodeButcherTable, (Cint,), imethod)
end
# Julia wrapper for header: arkode_butcher_erk.h
# Automatically generated using Clang.jl


function ARKodeButcherTable_LoadERK(imethod)
    ccall((:ARKodeButcherTable_LoadERK, libsundials_arkode), ARKodeButcherTable, (Cint,), imethod)
end
# Julia wrapper for header: arkode_erkstep.h
# Automatically generated using Clang.jl


function ERKStepCreate(f, t0, y0)
    ccall((:ERKStepCreate, libsundials_arkode), ERKStepMemPtr, (ARKRhsFn, realtype, N_Vector), f, t0, y0)
end

function ERKStepResize(arkode_mem, ynew, hscale, t0, resize, resize_data)
    ccall((:ERKStepResize, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector, realtype, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, hscale, t0, resize, resize_data)
end

function ERKStepReInit(arkode_mem, f, t0, y0)
    ccall((:ERKStepReInit, libsundials_arkode), Cint, (ARKStepMemPtr, ARKRhsFn, realtype, N_Vector), arkode_mem, f, t0, y0)
end

function ERKStepSStolerances(arkode_mem, reltol, abstol)
    ccall((:ERKStepSStolerances, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, realtype), arkode_mem, reltol, abstol)
end

function ERKStepSVtolerances(arkode_mem, reltol, abstol)
    ccall((:ERKStepSVtolerances, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, N_Vector), arkode_mem, reltol, abstol)
end

function ERKStepWFtolerances(arkode_mem, efun)
    ccall((:ERKStepWFtolerances, libsundials_arkode), Cint, (ARKStepMemPtr, ARKEwtFn), arkode_mem, efun)
end

function ERKStepRootInit(arkode_mem, nrtfn, g)
    ccall((:ERKStepRootInit, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function ERKStepSetDefaults(arkode_mem)
    ccall((:ERKStepSetDefaults, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ERKStepSetOrder(arkode_mem, maxord)
    ccall((:ERKStepSetOrder, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxord)
end

function ERKStepSetInterpolantType(arkode_mem, itype)
    ccall((:ERKStepSetInterpolantType, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, itype)
end

function ERKStepSetInterpolantDegree(arkode_mem, degree)
    ccall((:ERKStepSetInterpolantDegree, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, degree)
end

function ERKStepSetDenseOrder(arkode_mem, dord)
    ccall((:ERKStepSetDenseOrder, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, dord)
end

function ERKStepSetTable(arkode_mem, B)
    ccall((:ERKStepSetTable, libsundials_arkode), Cint, (ARKStepMemPtr, ARKodeButcherTable), arkode_mem, B)
end

function ERKStepSetTableNum(arkode_mem, itable)
    ccall((:ERKStepSetTableNum, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, itable)
end

function ERKStepSetCFLFraction(arkode_mem, cfl_frac)
    ccall((:ERKStepSetCFLFraction, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, cfl_frac)
end

function ERKStepSetSafetyFactor(arkode_mem, safety)
    ccall((:ERKStepSetSafetyFactor, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, safety)
end

function ERKStepSetErrorBias(arkode_mem, bias)
    ccall((:ERKStepSetErrorBias, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, bias)
end

function ERKStepSetMaxGrowth(arkode_mem, mx_growth)
    ccall((:ERKStepSetMaxGrowth, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, mx_growth)
end

function ERKStepSetMinReduction(arkode_mem, eta_min)
    ccall((:ERKStepSetMinReduction, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, eta_min)
end

function ERKStepSetFixedStepBounds(arkode_mem, lb, ub)
    ccall((:ERKStepSetFixedStepBounds, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, realtype), arkode_mem, lb, ub)
end

function ERKStepSetAdaptivityMethod(arkode_mem, imethod, idefault, pq, adapt_params)
    ccall((:ERKStepSetAdaptivityMethod, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, Cint, Cint, Ptr{realtype}), arkode_mem, imethod, idefault, pq, adapt_params)
end

function ERKStepSetAdaptivityFn(arkode_mem, hfun, h_data)
    ccall((:ERKStepSetAdaptivityFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKAdaptFn, Ptr{Cvoid}), arkode_mem, hfun, h_data)
end

function ERKStepSetMaxFirstGrowth(arkode_mem, etamx1)
    ccall((:ERKStepSetMaxFirstGrowth, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, etamx1)
end

function ERKStepSetMaxEFailGrowth(arkode_mem, etamxf)
    ccall((:ERKStepSetMaxEFailGrowth, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, etamxf)
end

function ERKStepSetSmallNumEFails(arkode_mem, small_nef)
    ccall((:ERKStepSetSmallNumEFails, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, small_nef)
end

function ERKStepSetStabilityFn(arkode_mem, EStab, estab_data)
    ccall((:ERKStepSetStabilityFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKExpStabFn, Ptr{Cvoid}), arkode_mem, EStab, estab_data)
end

function ERKStepSetMaxErrTestFails(arkode_mem, maxnef)
    ccall((:ERKStepSetMaxErrTestFails, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxnef)
end

function ERKStepSetConstraints(arkode_mem, constraints)
    ccall((:ERKStepSetConstraints, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, constraints)
end

function ERKStepSetMaxNumSteps(arkode_mem, mxsteps)
    ccall((:ERKStepSetMaxNumSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Clong), arkode_mem, mxsteps)
end

function ERKStepSetMaxHnilWarns(arkode_mem, mxhnil)
    ccall((:ERKStepSetMaxHnilWarns, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, mxhnil)
end

function ERKStepSetInitStep(arkode_mem, hin)
    ccall((:ERKStepSetInitStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hin)
end

function ERKStepSetMinStep(arkode_mem, hmin)
    ccall((:ERKStepSetMinStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hmin)
end

function ERKStepSetMaxStep(arkode_mem, hmax)
    ccall((:ERKStepSetMaxStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hmax)
end

function ERKStepSetStopTime(arkode_mem, tstop)
    ccall((:ERKStepSetStopTime, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, tstop)
end

function ERKStepSetFixedStep(arkode_mem, hfixed)
    ccall((:ERKStepSetFixedStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hfixed)
end

function ERKStepSetMaxNumConstrFails(arkode_mem, maxfails)
    ccall((:ERKStepSetMaxNumConstrFails, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, maxfails)
end

function ERKStepSetRootDirection(arkode_mem, rootdir)
    ccall((:ERKStepSetRootDirection, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Cint}), arkode_mem, rootdir)
end

function ERKStepSetNoInactiveRootWarn(arkode_mem)
    ccall((:ERKStepSetNoInactiveRootWarn, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function ERKStepSetErrHandlerFn(arkode_mem, ehfun, eh_data)
    ccall((:ERKStepSetErrHandlerFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function ERKStepSetErrFile(arkode_mem, errfp)
    ccall((:ERKStepSetErrFile, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, errfp)
end

function ERKStepSetUserData(arkode_mem, user_data)
    ccall((:ERKStepSetUserData, libsundials_arkode), Cint, (ARKStepMemPtr, Any), arkode_mem, user_data)
end

function ERKStepSetDiagnostics(arkode_mem, diagfp)
    ccall((:ERKStepSetDiagnostics, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, diagfp)
end

function ERKStepSetPostprocessStepFn(arkode_mem, ProcessStep)
    ccall((:ERKStepSetPostprocessStepFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKPostProcessFn), arkode_mem, ProcessStep)
end

function ERKStepSetPostprocessStageFn(arkode_mem, ProcessStage)
    ccall((:ERKStepSetPostprocessStageFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKPostProcessFn), arkode_mem, ProcessStage)
end

function ERKStepEvolve(arkode_mem, tout, yout, tret, itask)
    ccall((:ERKStepEvolve, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function ERKStepGetDky(arkode_mem, t, k, dky)
    ccall((:ERKStepGetDky, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function ERKStepGetNumExpSteps(arkode_mem, expsteps)
    ccall((:ERKStepGetNumExpSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, expsteps)
end

function ERKStepGetNumAccSteps(arkode_mem, accsteps)
    ccall((:ERKStepGetNumAccSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, accsteps)
end

function ERKStepGetNumStepAttempts(arkode_mem, step_attempts)
    ccall((:ERKStepGetNumStepAttempts, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, step_attempts)
end

function ERKStepGetNumRhsEvals(arkode_mem, nfevals)
    ccall((:ERKStepGetNumRhsEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nfevals)
end

function ERKStepGetNumErrTestFails(arkode_mem, netfails)
    ccall((:ERKStepGetNumErrTestFails, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, netfails)
end

function ERKStepGetCurrentButcherTable(arkode_mem, B)
    ccall((:ERKStepGetCurrentButcherTable, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{ARKodeButcherTable}), arkode_mem, B)
end

function ERKStepGetEstLocalErrors(arkode_mem, ele)
    ccall((:ERKStepGetEstLocalErrors, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, ele)
end

function ERKStepGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:ERKStepGetWorkSpace, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function ERKStepGetNumSteps(arkode_mem, nsteps)
    ccall((:ERKStepGetNumSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nsteps)
end

function ERKStepGetActualInitStep(arkode_mem, hinused)
    ccall((:ERKStepGetActualInitStep, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, hinused)
end

function ERKStepGetLastStep(arkode_mem, hlast)
    ccall((:ERKStepGetLastStep, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, hlast)
end

function ERKStepGetCurrentStep(arkode_mem, hcur)
    ccall((:ERKStepGetCurrentStep, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, hcur)
end

function ERKStepGetCurrentTime(arkode_mem, tcur)
    ccall((:ERKStepGetCurrentTime, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, tcur)
end

function ERKStepGetTolScaleFactor(arkode_mem, tolsfac)
    ccall((:ERKStepGetTolScaleFactor, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, tolsfac)
end

function ERKStepGetErrWeights(arkode_mem, eweight)
    ccall((:ERKStepGetErrWeights, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector), arkode_mem, eweight)
end

function ERKStepGetNumGEvals(arkode_mem, ngevals)
    ccall((:ERKStepGetNumGEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, ngevals)
end

function ERKStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:ERKStepGetRootInfo, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Cint}), arkode_mem, rootsfound)
end

function ERKStepGetNumConstrFails(arkode_mem, nconstrfails)
    ccall((:ERKStepGetNumConstrFails, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nconstrfails)
end

function ERKStepGetReturnFlagName(flag)
    ccall((:ERKStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ERKStepWriteParameters(arkode_mem, fp)
    ccall((:ERKStepWriteParameters, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ERKStepWriteButcher(arkode_mem, fp)
    ccall((:ERKStepWriteButcher, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ERKStepGetTimestepperStats(arkode_mem, expsteps, accsteps, step_attempts, nfevals, netfails)
    ccall((:ERKStepGetTimestepperStats, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), arkode_mem, expsteps, accsteps, step_attempts, nfevals, netfails)
end

function ERKStepGetStepStats(arkode_mem, nsteps, hinused, hlast, hcur, tcur)
    ccall((:ERKStepGetStepStats, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, nsteps, hinused, hlast, hcur, tcur)
end

function ERKStepFree(arkode_mem)
    ccall((:ERKStepFree, libsundials_arkode), Cvoid, (Ref{ARKStepMemPtr},), arkode_mem)
end

function ERKStepPrintMem(arkode_mem, outfile)
    ccall((:ERKStepPrintMem, libsundials_arkode), Cvoid, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, outfile)
end
# Julia wrapper for header: arkode_ls.h
# Automatically generated using Clang.jl

# Julia wrapper for header: arkode_mristep.h
# Automatically generated using Clang.jl


function MRIStepCreate(fs, t0, y0, inner_step_id, inner_step_mem)
    ccall((:MRIStepCreate, libsundials_arkode), MRIStepMemPtr, (ARKRhsFn, realtype, N_Vector, MRISTEP_ID, Ptr{Cvoid}), fs, t0, y0, inner_step_id, inner_step_mem)
end

function MRIStepResize(arkode_mem, ynew, t0, resize, resize_data)
    ccall((:MRIStepResize, libsundials_arkode), Cint, (ARKStepMemPtr, N_Vector, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, t0, resize, resize_data)
end

function MRIStepReInit(arkode_mem, fs, t0, y0)
    ccall((:MRIStepReInit, libsundials_arkode), Cint, (ARKStepMemPtr, ARKRhsFn, realtype, N_Vector), arkode_mem, fs, t0, y0)
end

function MRIStepRootInit(arkode_mem, nrtfn, g)
    ccall((:MRIStepRootInit, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function MRIStepSetDefaults(arkode_mem)
    ccall((:MRIStepSetDefaults, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function MRIStepSetInterpolantType(arkode_mem, itype)
    ccall((:MRIStepSetInterpolantType, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, itype)
end

function MRIStepSetInterpolantDegree(arkode_mem, degree)
    ccall((:MRIStepSetInterpolantDegree, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, degree)
end

function MRIStepSetDenseOrder(arkode_mem, dord)
    ccall((:MRIStepSetDenseOrder, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, dord)
end

function MRIStepSetTable(arkode_mem, q, B)
    ccall((:MRIStepSetTable, libsundials_arkode), Cint, (ARKStepMemPtr, Cint, ARKodeButcherTable), arkode_mem, q, B)
end

function MRIStepSetTableNum(arkode_mem, itable)
    ccall((:MRIStepSetTableNum, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, itable)
end

function MRIStepSetMaxNumSteps(arkode_mem, mxsteps)
    ccall((:MRIStepSetMaxNumSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Clong), arkode_mem, mxsteps)
end

function MRIStepSetMaxHnilWarns(arkode_mem, mxhnil)
    ccall((:MRIStepSetMaxHnilWarns, libsundials_arkode), Cint, (ARKStepMemPtr, Cint), arkode_mem, mxhnil)
end

function MRIStepSetStopTime(arkode_mem, tstop)
    ccall((:MRIStepSetStopTime, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, tstop)
end

function MRIStepSetFixedStep(arkode_mem, hsfixed)
    ccall((:MRIStepSetFixedStep, libsundials_arkode), Cint, (ARKStepMemPtr, realtype), arkode_mem, hsfixed)
end

function MRIStepSetRootDirection(arkode_mem, rootdir)
    ccall((:MRIStepSetRootDirection, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Cint}), arkode_mem, rootdir)
end

function MRIStepSetNoInactiveRootWarn(arkode_mem)
    ccall((:MRIStepSetNoInactiveRootWarn, libsundials_arkode), Cint, (ARKStepMemPtr,), arkode_mem)
end

function MRIStepSetErrHandlerFn(arkode_mem, ehfun, eh_data)
    ccall((:MRIStepSetErrHandlerFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function MRIStepSetErrFile(arkode_mem, errfp)
    ccall((:MRIStepSetErrFile, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, errfp)
end

function MRIStepSetUserData(arkode_mem, user_data)
    ccall((:MRIStepSetUserData, libsundials_arkode), Cint, (ARKStepMemPtr, Any), arkode_mem, user_data)
end

function MRIStepSetDiagnostics(arkode_mem, diagfp)
    ccall((:MRIStepSetDiagnostics, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, diagfp)
end

function MRIStepSetPostprocessStepFn(arkode_mem, ProcessStep)
    ccall((:MRIStepSetPostprocessStepFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKPostProcessFn), arkode_mem, ProcessStep)
end

function MRIStepSetPostprocessStageFn(arkode_mem, ProcessStage)
    ccall((:MRIStepSetPostprocessStageFn, libsundials_arkode), Cint, (ARKStepMemPtr, ARKPostProcessFn), arkode_mem, ProcessStage)
end

function MRIStepSetPreInnerFn(arkode_mem, prefn)
    ccall((:MRIStepSetPreInnerFn, libsundials_arkode), Cint, (ARKStepMemPtr, MRIStepPreInnerFn), arkode_mem, prefn)
end

function MRIStepSetPostInnerFn(arkode_mem, postfn)
    ccall((:MRIStepSetPostInnerFn, libsundials_arkode), Cint, (ARKStepMemPtr, MRIStepPostInnerFn), arkode_mem, postfn)
end

function MRIStepEvolve(arkode_mem, tout, yout, tret, itask)
    ccall((:MRIStepEvolve, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function MRIStepGetDky(arkode_mem, t, k, dky)
    ccall((:MRIStepGetDky, libsundials_arkode), Cint, (ARKStepMemPtr, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function MRIStepGetNumRhsEvals(arkode_mem, nfs_evals)
    ccall((:MRIStepGetNumRhsEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nfs_evals)
end

function MRIStepGetCurrentButcherTables(arkode_mem, B)
    ccall((:MRIStepGetCurrentButcherTables, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{ARKodeButcherTable}), arkode_mem, B)
end

function MRIStepGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:MRIStepGetWorkSpace, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function MRIStepGetNumSteps(arkode_mem, nssteps)
    ccall((:MRIStepGetNumSteps, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, nssteps)
end

function MRIStepGetLastStep(arkode_mem, hlast)
    ccall((:MRIStepGetLastStep, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, hlast)
end

function MRIStepGetCurrentTime(arkode_mem, tcur)
    ccall((:MRIStepGetCurrentTime, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{realtype}), arkode_mem, tcur)
end

function MRIStepGetCurrentState(arkode_mem, ycur)
    ccall((:MRIStepGetCurrentState, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{N_Vector}), arkode_mem, ycur)
end

function MRIStepGetNumGEvals(arkode_mem, ngevals)
    ccall((:MRIStepGetNumGEvals, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Clong}), arkode_mem, ngevals)
end

function MRIStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:MRIStepGetRootInfo, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Cint}), arkode_mem, rootsfound)
end

function MRIStepGetLastInnerStepFlag(arkode_mem, flag)
    ccall((:MRIStepGetLastInnerStepFlag, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{Cint}), arkode_mem, flag)
end

function MRIStepGetReturnFlagName(flag)
    ccall((:MRIStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function MRIStepWriteParameters(arkode_mem, fp)
    ccall((:MRIStepWriteParameters, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function MRIStepWriteButcher(arkode_mem, fp)
    ccall((:MRIStepWriteButcher, libsundials_arkode), Cint, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function MRIStepFree(arkode_mem)
    ccall((:MRIStepFree, libsundials_arkode), Cvoid, (Ref{ARKStepMemPtr},), arkode_mem)
end

function MRIStepPrintMem(arkode_mem, outfile)
    ccall((:MRIStepPrintMem, libsundials_arkode), Cvoid, (ARKStepMemPtr, Ptr{FILE}), arkode_mem, outfile)
end
