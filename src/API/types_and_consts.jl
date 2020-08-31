# Automatically generated using Clang.jl

############################# Manual Additions by jd-lara##################################

const sunindextype = Int32

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_1

# begin enum ANONYMOUS_2
const ANONYMOUS_2 = UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_

##########################################################################################
const ARK_NORMAL = Cint(1)
const ARK_ONE_STEP = Cint(2)
const ARK_INTERP_MAX_DEGREE = Cint(5)
const ARK_INTERP_HERMITE = Cint(0)
const ARK_INTERP_LAGRANGE = Cint(1)
const ARK_SUCCESS = Cint(0)
const ARK_TSTOP_RETURN = Cint(1)
const ARK_ROOT_RETURN = Cint(2)
const ARK_WARNING = Cint(99)
const ARK_TOO_MUCH_WORK = Cint(-1)
const ARK_TOO_MUCH_ACC = Cint(-2)
const ARK_ERR_FAILURE = Cint(-3)
const ARK_CONV_FAILURE = Cint(-4)
const ARK_LINIT_FAIL = Cint(-5)
const ARK_LSETUP_FAIL = Cint(-6)
const ARK_LSOLVE_FAIL = Cint(-7)
const ARK_RHSFUNC_FAIL = Cint(-8)
const ARK_FIRST_RHSFUNC_ERR = Cint(-9)
const ARK_REPTD_RHSFUNC_ERR = Cint(-10)
const ARK_UNREC_RHSFUNC_ERR = Cint(-11)
const ARK_RTFUNC_FAIL = Cint(-12)
const ARK_LFREE_FAIL = Cint(-13)
const ARK_MASSINIT_FAIL = Cint(-14)
const ARK_MASSSETUP_FAIL = Cint(-15)
const ARK_MASSSOLVE_FAIL = Cint(-16)
const ARK_MASSFREE_FAIL = Cint(-17)
const ARK_MASSMULT_FAIL = Cint(-18)
const ARK_CONSTR_FAIL = Cint(-19)
const ARK_MEM_FAIL = Cint(-20)
const ARK_MEM_NULL = Cint(-21)
const ARK_ILL_INPUT = Cint(-22)
const ARK_NO_MALLOC = Cint(-23)
const ARK_BAD_K = Cint(-24)
const ARK_BAD_T = Cint(-25)
const ARK_BAD_DKY = Cint(-26)
const ARK_TOO_CLOSE = Cint(-27)
const ARK_VECTOROP_ERR = Cint(-28)
const ARK_NLS_INIT_FAIL = Cint(-29)
const ARK_NLS_SETUP_FAIL = Cint(-30)
const ARK_NLS_SETUP_RECVR = Cint(-31)
const ARK_NLS_OP_ERR = Cint(-32)
const ARK_INNERSTEP_ATTACH_ERR = Cint(-33)
const ARK_INNERSTEP_FAIL = Cint(-34)
const ARK_OUTERTOINNER_FAIL = Cint(-35)
const ARK_INNERTOOUTER_FAIL = Cint(-36)
const ARK_POSTPROCESS_FAIL = Cint(-37)
const ARK_POSTPROCESS_STEP_FAIL = Cint(-37)
const ARK_POSTPROCESS_STAGE_FAIL = Cint(-38)
const ARK_USER_PREDICT_FAIL = Cint(-39)
const ARK_INTERP_FAIL = Cint(-40)
const ARK_UNRECOGNIZED_ERROR = Cint(-99)
const ARKRhsFn = Ptr{Cvoid}
const ARKRootFn = Ptr{Cvoid}
const ARKEwtFn = Ptr{Cvoid}
const ARKRwtFn = Ptr{Cvoid}
const ARKErrHandlerFn = Ptr{Cvoid}
const ARKAdaptFn = Ptr{Cvoid}
const ARKExpStabFn = Ptr{Cvoid}
const ARKVecResizeFn = Ptr{Cvoid}
const ARKPostProcessFn = Ptr{Cvoid}
const ARKPostProcessStepFn = Ptr{Cvoid}
const HEUN_EULER_2_1_2 = Cint(0)
const DEFAULT_ERK_2 = HEUN_EULER_2_1_2
const BOGACKI_SHAMPINE_4_2_3 = Cint(1)
const DEFAULT_ERK_3 = BOGACKI_SHAMPINE_4_2_3
const ZONNEVELD_5_3_4 = Cint(3)
const DEFAULT_ERK_4 = ZONNEVELD_5_3_4
const CASH_KARP_6_4_5 = Cint(6)
const DEFAULT_ERK_5 = CASH_KARP_6_4_5
const VERNER_8_5_6 = Cint(10)
const DEFAULT_ERK_6 = VERNER_8_5_6
const FEHLBERG_13_7_8 = Cint(11)
const DEFAULT_ERK_8 = FEHLBERG_13_7_8
const SDIRK_2_1_2 = Cint(100)
const DEFAULT_DIRK_2 = SDIRK_2_1_2
const ARK324L2SA_DIRK_4_2_3 = Cint(104)
const DEFAULT_DIRK_3 = ARK324L2SA_DIRK_4_2_3
const SDIRK_5_3_4 = Cint(107)
const DEFAULT_DIRK_4 = SDIRK_5_3_4
const ARK548L2SA_DIRK_8_4_5 = Cint(111)
const DEFAULT_DIRK_5 = ARK548L2SA_DIRK_8_4_5
const ARK324L2SA_ERK_4_2_3 = Cint(2)
const DEFAULT_ARK_ETABLE_3 = ARK324L2SA_ERK_4_2_3
const ARK436L2SA_ERK_6_3_4 = Cint(4)
const DEFAULT_ARK_ETABLE_4 = ARK436L2SA_ERK_6_3_4
const ARK548L2SA_ERK_8_4_5 = Cint(9)
const DEFAULT_ARK_ETABLE_5 = ARK548L2SA_ERK_8_4_5
const DEFAULT_ARK_ITABLE_3 = ARK324L2SA_DIRK_4_2_3
const ARK436L2SA_DIRK_6_3_4 = Cint(109)
const DEFAULT_ARK_ITABLE_4 = ARK436L2SA_DIRK_6_3_4
const DEFAULT_ARK_ITABLE_5 = ARK548L2SA_DIRK_8_4_5
const ARKStepStagePredictFn = Ptr{Cvoid}
const ARKLocalFn = Ptr{Cvoid}
const ARKCommFn = Ptr{Cvoid}
const realtype = Cdouble

struct ARKodeButcherTableMem
    q::Cint
    p::Cint
    stages::Cint
    A::Ptr{Ptr{realtype}}
    c::Ptr{realtype}
    b::Ptr{realtype}
    d::Ptr{realtype}
end

const ARKodeButcherTable = Ptr{ARKodeButcherTableMem}
const BILLINGTON_3_3_2 = Cint(101)
const TRBDF2_3_3_2 = Cint(102)
const KVAERNO_4_2_3 = Cint(103)
const CASH_5_2_4 = Cint(105)
const CASH_5_3_4 = Cint(106)
const KVAERNO_5_3_4 = Cint(108)
const KVAERNO_7_4_5 = Cint(110)
const ARK437L2SA_DIRK_7_3_4 = Cint(112)
const ARK548L2SAb_DIRK_8_4_5 = Cint(113)
const MIN_DIRK_NUM = Cint(100)
const MAX_DIRK_NUM = Cint(113)
const SAYFY_ABURUB_6_3_4 = Cint(5)
const FEHLBERG_6_4_5 = Cint(7)
const DORMAND_PRINCE_7_4_5 = Cint(8)
const KNOTH_WOLKE_3_3 = Cint(12)
const ARK437L2SA_ERK_7_3_4 = Cint(13)
const ARK548L2SAb_ERK_8_4_5 = Cint(14)
const MIN_ERK_NUM = Cint(0)
const MAX_ERK_NUM = Cint(14)
const ARKLS_SUCCESS = Cint(0)
const ARKLS_MEM_NULL = Cint(-1)
const ARKLS_LMEM_NULL = Cint(-2)
const ARKLS_ILL_INPUT = Cint(-3)
const ARKLS_MEM_FAIL = Cint(-4)
const ARKLS_PMEM_NULL = Cint(-5)
const ARKLS_MASSMEM_NULL = Cint(-6)
const ARKLS_JACFUNC_UNRECVR = Cint(-7)
const ARKLS_JACFUNC_RECVR = Cint(-8)
const ARKLS_MASSFUNC_UNRECVR = Cint(-9)
const ARKLS_MASSFUNC_RECVR = Cint(-10)
const ARKLS_SUNMAT_FAIL = Cint(-11)
const ARKLS_SUNLS_FAIL = Cint(-12)
const ARKLsJacFn = Ptr{Cvoid}
const ARKLsMassFn = Ptr{Cvoid}
const ARKLsPrecSetupFn = Ptr{Cvoid}
const ARKLsPrecSolveFn = Ptr{Cvoid}
const ARKLsJacTimesSetupFn = Ptr{Cvoid}
const ARKLsJacTimesVecFn = Ptr{Cvoid}
const ARKLsLinSysFn = Ptr{Cvoid}
const ARKLsMassTimesSetupFn = Ptr{Cvoid}
const ARKLsMassTimesVecFn = Ptr{Cvoid}
const ARKLsMassPrecSetupFn = Ptr{Cvoid}
const ARKLsMassPrecSolveFn = Ptr{Cvoid}
const DEFAULT_MRI_TABLE_3 = KNOTH_WOLKE_3_3

@cenum MRISTEP_ID::UInt32 begin
    MRISTEP_ARKSTEP = 0
end


const MRIStepPreInnerFn = Ptr{Cvoid}
const MRIStepPostInnerFn = Ptr{Cvoid}
const CV_ADAMS = Cint(1)
const CV_BDF = Cint(2)
const CV_NORMAL = Cint(1)
const CV_ONE_STEP = Cint(2)
const CV_SUCCESS = Cint(0)
const CV_TSTOP_RETURN = Cint(1)
const CV_ROOT_RETURN = Cint(2)
const CV_WARNING = Cint(99)
const CV_TOO_MUCH_WORK = Cint(-1)
const CV_TOO_MUCH_ACC = Cint(-2)
const CV_ERR_FAILURE = Cint(-3)
const CV_CONV_FAILURE = Cint(-4)
const CV_LINIT_FAIL = Cint(-5)
const CV_LSETUP_FAIL = Cint(-6)
const CV_LSOLVE_FAIL = Cint(-7)
const CV_RHSFUNC_FAIL = Cint(-8)
const CV_FIRST_RHSFUNC_ERR = Cint(-9)
const CV_REPTD_RHSFUNC_ERR = Cint(-10)
const CV_UNREC_RHSFUNC_ERR = Cint(-11)
const CV_RTFUNC_FAIL = Cint(-12)
const CV_NLS_INIT_FAIL = Cint(-13)
const CV_NLS_SETUP_FAIL = Cint(-14)
const CV_CONSTR_FAIL = Cint(-15)
const CV_NLS_FAIL = Cint(-16)
const CV_MEM_FAIL = Cint(-20)
const CV_MEM_NULL = Cint(-21)
const CV_ILL_INPUT = Cint(-22)
const CV_NO_MALLOC = Cint(-23)
const CV_BAD_K = Cint(-24)
const CV_BAD_T = Cint(-25)
const CV_BAD_DKY = Cint(-26)
const CV_TOO_CLOSE = Cint(-27)
const CV_VECTOROP_ERR = Cint(-28)
const CV_PROJ_MEM_NULL = Cint(-29)
const CV_PROJFUNC_FAIL = Cint(-30)
const CV_REPTD_PROJFUNC_ERR = Cint(-31)
const CV_UNRECOGNIZED_ERR = Cint(-99)
const CVRhsFn = Ptr{Cvoid}
const CVRootFn = Ptr{Cvoid}
const CVEwtFn = Ptr{Cvoid}
const CVErrHandlerFn = Ptr{Cvoid}
const CVMonitorFn = Ptr{Cvoid}
const CVLocalFn = Ptr{Cvoid}
const CVCommFn = Ptr{Cvoid}
const CVDIAG_SUCCESS = Cint(0)
const CVDIAG_MEM_NULL = Cint(-1)
const CVDIAG_LMEM_NULL = Cint(-2)
const CVDIAG_ILL_INPUT = Cint(-3)
const CVDIAG_MEM_FAIL = Cint(-4)
const CVDIAG_INV_FAIL = Cint(-5)
const CVDIAG_RHSFUNC_UNRECVR = Cint(-6)
const CVDIAG_RHSFUNC_RECVR = Cint(-7)
const CVLsJacFn = Ptr{Cvoid}
const CVDlsJacFn = CVLsJacFn
const CVLS_SUCCESS = Cint(0)
const CVLS_MEM_NULL = Cint(-1)
const CVLS_LMEM_NULL = Cint(-2)
const CVLS_ILL_INPUT = Cint(-3)
const CVLS_MEM_FAIL = Cint(-4)
const CVLS_PMEM_NULL = Cint(-5)
const CVLS_JACFUNC_UNRECVR = Cint(-6)
const CVLS_JACFUNC_RECVR = Cint(-7)
const CVLS_SUNMAT_FAIL = Cint(-8)
const CVLS_SUNLS_FAIL = Cint(-9)
const CVLsPrecSetupFn = Ptr{Cvoid}
const CVLsPrecSolveFn = Ptr{Cvoid}
const CVLsJacTimesSetupFn = Ptr{Cvoid}
const CVLsJacTimesVecFn = Ptr{Cvoid}
const CVLsLinSysFn = Ptr{Cvoid}
const CVProjFn = Ptr{Cvoid}
const CVSpilsPrecSetupFn = CVLsPrecSetupFn
const CVSpilsPrecSolveFn = CVLsPrecSolveFn
const CVSpilsJacTimesSetupFn = CVLsJacTimesSetupFn
const CVSpilsJacTimesVecFn = CVLsJacTimesVecFn
const CV_SIMULTANEOUS = Cint(1)
const CV_STAGGERED = Cint(2)
const CV_STAGGERED1 = Cint(3)
const CV_CENTERED = Cint(1)
const CV_FORWARD = Cint(2)
const CV_HERMITE = Cint(1)
const CV_POLYNOMIAL = Cint(2)
const CV_NO_QUAD = Cint(-30)
const CV_QRHSFUNC_FAIL = Cint(-31)
const CV_FIRST_QRHSFUNC_ERR = Cint(-32)
const CV_REPTD_QRHSFUNC_ERR = Cint(-33)
const CV_UNREC_QRHSFUNC_ERR = Cint(-34)
const CV_NO_SENS = Cint(-40)
const CV_SRHSFUNC_FAIL = Cint(-41)
const CV_FIRST_SRHSFUNC_ERR = Cint(-42)
const CV_REPTD_SRHSFUNC_ERR = Cint(-43)
const CV_UNREC_SRHSFUNC_ERR = Cint(-44)
const CV_BAD_IS = Cint(-45)
const CV_NO_QUADSENS = Cint(-50)
const CV_QSRHSFUNC_FAIL = Cint(-51)
const CV_FIRST_QSRHSFUNC_ERR = Cint(-52)
const CV_REPTD_QSRHSFUNC_ERR = Cint(-53)
const CV_UNREC_QSRHSFUNC_ERR = Cint(-54)
const CV_NO_ADJ = Cint(-101)
const CV_NO_FWD = Cint(-102)
const CV_NO_BCK = Cint(-103)
const CV_BAD_TB0 = Cint(-104)
const CV_REIFWD_FAIL = Cint(-105)
const CV_FWD_FAIL = Cint(-106)
const CV_GETY_BADT = Cint(-107)
const CVQuadRhsFn = Ptr{Cvoid}
const CVSensRhsFn = Ptr{Cvoid}
const CVSensRhs1Fn = Ptr{Cvoid}
const CVQuadSensRhsFn = Ptr{Cvoid}
const CVRhsFnB = Ptr{Cvoid}
const CVRhsFnBS = Ptr{Cvoid}
const CVQuadRhsFnB = Ptr{Cvoid}
const CVQuadRhsFnBS = Ptr{Cvoid}

struct CVadjCheckPointRec
    my_addr::Ptr{Cvoid}
    next_addr::Ptr{Cvoid}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

const CVLocalFnB = Ptr{Cvoid}
const CVCommFnB = Ptr{Cvoid}
const CVDIAG_NO_ADJ = Cint(-101)
const CVLsJacFnB = Ptr{Cvoid}
const CVDlsJacFnB = CVLsJacFnB
const CVLsJacFnBS = Ptr{Cvoid}
const CVDlsJacFnBS = CVLsJacFnBS
const CVLS_NO_ADJ = Cint(-101)
const CVLS_LMEMB_NULL = Cint(-102)
const CVLsPrecSetupFnB = Ptr{Cvoid}
const CVLsPrecSetupFnBS = Ptr{Cvoid}
const CVLsPrecSolveFnB = Ptr{Cvoid}
const CVLsPrecSolveFnBS = Ptr{Cvoid}
const CVLsJacTimesSetupFnB = Ptr{Cvoid}
const CVLsJacTimesSetupFnBS = Ptr{Cvoid}
const CVLsJacTimesVecFnB = Ptr{Cvoid}
const CVLsJacTimesVecFnBS = Ptr{Cvoid}
const CVLsLinSysFnB = Ptr{Cvoid}
const CVLsLinSysFnBS = Ptr{Cvoid}
const CVSpilsPrecSetupFnB = CVLsPrecSetupFnB
const CVSpilsPrecSetupFnBS = CVLsPrecSetupFnBS
const CVSpilsPrecSolveFnB = CVLsPrecSolveFnB
const CVSpilsPrecSolveFnBS = CVLsPrecSolveFnBS
const CVSpilsJacTimesSetupFnB = CVLsJacTimesSetupFnB
const CVSpilsJacTimesSetupFnBS = CVLsJacTimesSetupFnBS
const CVSpilsJacTimesVecFnB = CVLsJacTimesVecFnB
const CVSpilsJacTimesVecFnBS = CVLsJacTimesVecFnBS
const IDA_NORMAL = Cint(1)
const IDA_ONE_STEP = Cint(2)
const IDA_YA_YDP_INIT = Cint(1)
const IDA_Y_INIT = Cint(2)
const IDA_SUCCESS = Cint(0)
const IDA_TSTOP_RETURN = Cint(1)
const IDA_ROOT_RETURN = Cint(2)
const IDA_WARNING = Cint(99)
const IDA_TOO_MUCH_WORK = Cint(-1)
const IDA_TOO_MUCH_ACC = Cint(-2)
const IDA_ERR_FAIL = Cint(-3)
const IDA_CONV_FAIL = Cint(-4)
const IDA_LINIT_FAIL = Cint(-5)
const IDA_LSETUP_FAIL = Cint(-6)
const IDA_LSOLVE_FAIL = Cint(-7)
const IDA_RES_FAIL = Cint(-8)
const IDA_REP_RES_ERR = Cint(-9)
const IDA_RTFUNC_FAIL = Cint(-10)
const IDA_CONSTR_FAIL = Cint(-11)
const IDA_FIRST_RES_FAIL = Cint(-12)
const IDA_LINESEARCH_FAIL = Cint(-13)
const IDA_NO_RECOVERY = Cint(-14)
const IDA_NLS_INIT_FAIL = Cint(-15)
const IDA_NLS_SETUP_FAIL = Cint(-16)
const IDA_NLS_FAIL = Cint(-17)
const IDA_MEM_NULL = Cint(-20)
const IDA_MEM_FAIL = Cint(-21)
const IDA_ILL_INPUT = Cint(-22)
const IDA_NO_MALLOC = Cint(-23)
const IDA_BAD_EWT = Cint(-24)
const IDA_BAD_K = Cint(-25)
const IDA_BAD_T = Cint(-26)
const IDA_BAD_DKY = Cint(-27)
const IDA_VECTOROP_ERR = Cint(-28)
const IDA_UNRECOGNIZED_ERROR = Cint(-99)
const IDAResFn = Ptr{Cvoid}
const IDARootFn = Ptr{Cvoid}
const IDAEwtFn = Ptr{Cvoid}
const IDAErrHandlerFn = Ptr{Cvoid}
const IDABBDLocalFn = Ptr{Cvoid}
const IDABBDCommFn = Ptr{Cvoid}
const IDALsJacFn = Ptr{Cvoid}
const IDADlsJacFn = IDALsJacFn
const IDALS_SUCCESS = Cint(0)
const IDALS_MEM_NULL = Cint(-1)
const IDALS_LMEM_NULL = Cint(-2)
const IDALS_ILL_INPUT = Cint(-3)
const IDALS_MEM_FAIL = Cint(-4)
const IDALS_PMEM_NULL = Cint(-5)
const IDALS_JACFUNC_UNRECVR = Cint(-6)
const IDALS_JACFUNC_RECVR = Cint(-7)
const IDALS_SUNMAT_FAIL = Cint(-8)
const IDALS_SUNLS_FAIL = Cint(-9)
const IDALsPrecSetupFn = Ptr{Cvoid}
const IDALsPrecSolveFn = Ptr{Cvoid}
const IDALsJacTimesSetupFn = Ptr{Cvoid}
const IDALsJacTimesVecFn = Ptr{Cvoid}
const IDASpilsPrecSetupFn = IDALsPrecSetupFn
const IDASpilsPrecSolveFn = IDALsPrecSolveFn
const IDASpilsJacTimesSetupFn = IDALsJacTimesSetupFn
const IDASpilsJacTimesVecFn = IDALsJacTimesVecFn
const IDA_SIMULTANEOUS = Cint(1)
const IDA_STAGGERED = Cint(2)
const IDA_CENTERED = Cint(1)
const IDA_FORWARD = Cint(2)
const IDA_HERMITE = Cint(1)
const IDA_POLYNOMIAL = Cint(2)
const IDA_NO_QUAD = Cint(-30)
const IDA_QRHS_FAIL = Cint(-31)
const IDA_FIRST_QRHS_ERR = Cint(-32)
const IDA_REP_QRHS_ERR = Cint(-33)
const IDA_NO_SENS = Cint(-40)
const IDA_SRES_FAIL = Cint(-41)
const IDA_REP_SRES_ERR = Cint(-42)
const IDA_BAD_IS = Cint(-43)
const IDA_NO_QUADSENS = Cint(-50)
const IDA_QSRHS_FAIL = Cint(-51)
const IDA_FIRST_QSRHS_ERR = Cint(-52)
const IDA_REP_QSRHS_ERR = Cint(-53)
const IDA_NO_ADJ = Cint(-101)
const IDA_NO_FWD = Cint(-102)
const IDA_NO_BCK = Cint(-103)
const IDA_BAD_TB0 = Cint(-104)
const IDA_REIFWD_FAIL = Cint(-105)
const IDA_FWD_FAIL = Cint(-106)
const IDA_GETY_BADT = Cint(-107)
const IDAQuadRhsFn = Ptr{Cvoid}
const IDASensResFn = Ptr{Cvoid}
const IDAQuadSensRhsFn = Ptr{Cvoid}
const IDAResFnB = Ptr{Cvoid}
const IDAResFnBS = Ptr{Cvoid}
const IDAQuadRhsFnB = Ptr{Cvoid}
const IDAQuadRhsFnBS = Ptr{Cvoid}

struct IDAadjCheckPointRec
    my_addr::Ptr{Cvoid}
    next_addr::Ptr{Cvoid}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

const IDABBDLocalFnB = Ptr{Cvoid}
const IDABBDCommFnB = Ptr{Cvoid}
const IDALsJacFnB = Ptr{Cvoid}
const IDADlsJacFnB = IDALsJacFnB
const IDALsJacFnBS = Ptr{Cvoid}
const IDADlsJacFnBS = IDALsJacFnBS
const IDALS_NO_ADJ = Cint(-101)
const IDALS_LMEMB_NULL = Cint(-102)
const IDALsPrecSetupFnB = Ptr{Cvoid}
const IDALsPrecSetupFnBS = Ptr{Cvoid}
const IDALsPrecSolveFnB = Ptr{Cvoid}
const IDALsPrecSolveFnBS = Ptr{Cvoid}
const IDALsJacTimesSetupFnB = Ptr{Cvoid}
const IDALsJacTimesSetupFnBS = Ptr{Cvoid}
const IDALsJacTimesVecFnB = Ptr{Cvoid}
const IDALsJacTimesVecFnBS = Ptr{Cvoid}
const IDASpilsPrecSetupFnB = IDALsPrecSetupFnB
const IDASpilsPrecSetupFnBS = IDALsPrecSetupFnBS
const IDASpilsPrecSolveFnB = IDALsPrecSolveFnB
const IDASpilsPrecSolveFnBS = IDALsPrecSolveFnBS
const IDASpilsJacTimesSetupFnB = IDALsJacTimesSetupFnB
const IDASpilsJacTimesSetupFnBS = IDALsJacTimesSetupFnBS
const IDASpilsJacTimesVecFnB = IDALsJacTimesVecFnB
const IDASpilsJacTimesVecFnBS = IDALsJacTimesVecFnBS
const KIN_SUCCESS = Cint(0)
const KIN_INITIAL_GUESS_OK = Cint(1)
const KIN_STEP_LT_STPTOL = Cint(2)
const KIN_WARNING = Cint(99)
const KIN_MEM_NULL = Cint(-1)
const KIN_ILL_INPUT = Cint(-2)
const KIN_NO_MALLOC = Cint(-3)
const KIN_MEM_FAIL = Cint(-4)
const KIN_LINESEARCH_NONCONV = Cint(-5)
const KIN_MAXITER_REACHED = Cint(-6)
const KIN_MXNEWT_5X_EXCEEDED = Cint(-7)
const KIN_LINESEARCH_BCFAIL = Cint(-8)
const KIN_LINSOLV_NO_RECOVERY = Cint(-9)
const KIN_LINIT_FAIL = Cint(-10)
const KIN_LSETUP_FAIL = Cint(-11)
const KIN_LSOLVE_FAIL = Cint(-12)
const KIN_SYSFUNC_FAIL = Cint(-13)
const KIN_FIRST_SYSFUNC_ERR = Cint(-14)
const KIN_REPTD_SYSFUNC_ERR = Cint(-15)
const KIN_VECTOROP_ERR = Cint(-16)
const KIN_ETACHOICE1 = Cint(1)
const KIN_ETACHOICE2 = Cint(2)
const KIN_ETACONSTANT = Cint(3)
const KIN_NONE = Cint(0)
const KIN_LINESEARCH = Cint(1)
const KIN_PICARD = Cint(2)
const KIN_FP = Cint(3)
const KINSysFn = Ptr{Cvoid}
const KINErrHandlerFn = Ptr{Cvoid}
const KINInfoHandlerFn = Ptr{Cvoid}
const KINBBDPRE_SUCCESS = Cint(0)
const KINBBDPRE_PDATA_NULL = Cint(-11)
const KINBBDPRE_FUNC_UNRECVR = Cint(-12)
const KINBBDCommFn = Ptr{Cvoid}
const KINBBDLocalFn = Ptr{Cvoid}
const KINLsJacFn = Ptr{Cvoid}
const KINDlsJacFn = KINLsJacFn
const KINLS_SUCCESS = Cint(0)
const KINLS_MEM_NULL = Cint(-1)
const KINLS_LMEM_NULL = Cint(-2)
const KINLS_ILL_INPUT = Cint(-3)
const KINLS_MEM_FAIL = Cint(-4)
const KINLS_PMEM_NULL = Cint(-5)
const KINLS_JACFUNC_ERR = Cint(-6)
const KINLS_SUNMAT_FAIL = Cint(-7)
const KINLS_SUNLS_FAIL = Cint(-8)
const KINLsPrecSetupFn = Ptr{Cvoid}
const KINLsPrecSolveFn = Ptr{Cvoid}
const KINLsJacTimesVecFn = Ptr{Cvoid}
const KINSpilsPrecSetupFn = KINLsPrecSetupFn
const KINSpilsPrecSolveFn = KINLsPrecSolveFn
const KINSpilsJacTimesVecFn = KINLsJacTimesVecFn

struct _generic_N_Vector_Ops
    nvgetvectorid::Ptr{Cvoid}
    nvclone::Ptr{Cvoid}
    nvcloneempty::Ptr{Cvoid}
    nvdestroy::Ptr{Cvoid}
    nvspace::Ptr{Cvoid}
    nvgetarraypointer::Ptr{Cvoid}
    nvsetarraypointer::Ptr{Cvoid}
    nvgetcommunicator::Ptr{Cvoid}
    nvgetlength::Ptr{Cvoid}
    nvlinearsum::Ptr{Cvoid}
    nvconst::Ptr{Cvoid}
    nvprod::Ptr{Cvoid}
    nvdiv::Ptr{Cvoid}
    nvscale::Ptr{Cvoid}
    nvabs::Ptr{Cvoid}
    nvinv::Ptr{Cvoid}
    nvaddconst::Ptr{Cvoid}
    nvdotprod::Ptr{Cvoid}
    nvmaxnorm::Ptr{Cvoid}
    nvwrmsnorm::Ptr{Cvoid}
    nvwrmsnormmask::Ptr{Cvoid}
    nvmin::Ptr{Cvoid}
    nvwl2norm::Ptr{Cvoid}
    nvl1norm::Ptr{Cvoid}
    nvcompare::Ptr{Cvoid}
    nvinvtest::Ptr{Cvoid}
    nvconstrmask::Ptr{Cvoid}
    nvminquotient::Ptr{Cvoid}
    nvlinearcombination::Ptr{Cvoid}
    nvscaleaddmulti::Ptr{Cvoid}
    nvdotprodmulti::Ptr{Cvoid}
    nvlinearsumvectorarray::Ptr{Cvoid}
    nvscalevectorarray::Ptr{Cvoid}
    nvconstvectorarray::Ptr{Cvoid}
    nvwrmsnormvectorarray::Ptr{Cvoid}
    nvwrmsnormmaskvectorarray::Ptr{Cvoid}
    nvscaleaddmultivectorarray::Ptr{Cvoid}
    nvlinearcombinationvectorarray::Ptr{Cvoid}
    nvdotprodlocal::Ptr{Cvoid}
    nvmaxnormlocal::Ptr{Cvoid}
    nvminlocal::Ptr{Cvoid}
    nvl1normlocal::Ptr{Cvoid}
    nvinvtestlocal::Ptr{Cvoid}
    nvconstrmasklocal::Ptr{Cvoid}
    nvminquotientlocal::Ptr{Cvoid}
    nvwsqrsumlocal::Ptr{Cvoid}
    nvwsqrsummasklocal::Ptr{Cvoid}
    nvprint::Ptr{Cvoid}
    nvprintfile::Ptr{Cvoid}
end

const N_Vector_Ops = Ptr{_generic_N_Vector_Ops}

struct _generic_N_Vector
    content::Ptr{Cvoid}
    ops::N_Vector_Ops
end

const N_Vector = Ptr{_generic_N_Vector}

struct _N_VectorContent_ManyVector
    num_subvectors::sunindextype
    global_length::sunindextype
    subvec_array::Ptr{N_Vector}
    own_data::Cint
end

const N_VectorContent_ManyVector = Ptr{_N_VectorContent_ManyVector}

# Skipping MacroDefinition: NV_CONTENT_S ( v ) ( ( N_VectorContent_Serial ) ( v -> content ) )
# Skipping MacroDefinition: NV_LENGTH_S ( v ) ( NV_CONTENT_S ( v ) -> length )
# Skipping MacroDefinition: NV_OWN_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> own_data )
# Skipping MacroDefinition: NV_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> data )
# Skipping MacroDefinition: NV_Ith_S ( v , i ) ( NV_DATA_S ( v ) [ i ] )

struct _N_VectorContent_Serial
    length::sunindextype
    own_data::Cint
    data::Ptr{realtype}
end

const N_VectorContent_Serial = Ptr{_N_VectorContent_Serial}
const SUNDIALS_VERSION = "5.3.0"
const SUNDIALS_VERSION_MAJOR = Cint(5)
const SUNDIALS_VERSION_MINOR = Cint(3)
const SUNDIALS_VERSION_PATCH = Cint(0)
const SUNDIALS_VERSION_LABEL = ""

# Skipping MacroDefinition: SUNDIALS_F77_FUNC ( name , NAME ) name ## _
# Skipping MacroDefinition: SUNDIALS_F77_FUNC_ ( name , NAME ) name ## _

const SUNDIALS_DOUBLE_PRECISION = Cint(1)
const SUNDIALS_INT32_T = Cint(1)
const SUNDIALS_INDEX_TYPE = int32_t
const SUNDIALS_SUPERLUMT_THREAD_TYPE = "OPENMP"
const SUNDIALS_MPI_COMM_F2C = Cint(0)
const SUNDIALS_DEPRECATED = SUNDIALS_EXPORT
const SUNDIALS_DENSE = Cint(1)
const SUNDIALS_BAND = Cint(2)

# Skipping MacroDefinition: DENSE_COL ( A , j ) ( ( A -> cols ) [ j ] )
# Skipping MacroDefinition: DENSE_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ i ] )
# Skipping MacroDefinition: BAND_COL ( A , j ) ( ( ( A -> cols ) [ j ] ) + ( A -> s_mu ) )
# Skipping MacroDefinition: BAND_COL_ELEM ( col_j , i , j ) ( col_j [ ( i ) - ( j ) ] )
# Skipping MacroDefinition: BAND_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ ( i ) - ( j ) + ( A -> s_mu ) ] )

struct _DlsMat
    type::Cint
    M::sunindextype
    N::sunindextype
    ldim::sunindextype
    mu::sunindextype
    ml::sunindextype
    s_mu::sunindextype
    data::Ptr{realtype}
    ldata::sunindextype
    cols::Ptr{Ptr{realtype}}
end

const DlsMat = Ptr{_DlsMat}
const FCMIX_CVODE = Cint(1)
const FCMIX_IDA = Cint(2)
const FCMIX_KINSOL = Cint(3)
const FCMIX_ARKODE = Cint(4)
const ATimesFn = Ptr{Cvoid}
const PSetupFn = Ptr{Cvoid}
const PSolveFn = Ptr{Cvoid}

# Skipping MacroDefinition: dcopy_f77 SUNDIALS_F77_FUNC ( dcopy , DCOPY )
# Skipping MacroDefinition: dscal_f77 SUNDIALS_F77_FUNC ( dscal , DSCAL )
# Skipping MacroDefinition: dgemv_f77 SUNDIALS_F77_FUNC ( dgemv , DGEMV )
# Skipping MacroDefinition: dtrsv_f77 SUNDIALS_F77_FUNC ( dtrsv , DTRSV )
# Skipping MacroDefinition: dsyrk_f77 SUNDIALS_F77_FUNC ( dsyrk , DSKYR )
# Skipping MacroDefinition: dgbtrf_f77 SUNDIALS_F77_FUNC ( dgbtrf , DGBTRF )
# Skipping MacroDefinition: dgbtrs_f77 SUNDIALS_F77_FUNC ( dgbtrs , DGBTRS )
# Skipping MacroDefinition: dgetrf_f77 SUNDIALS_F77_FUNC ( dgetrf , DGETRF )
# Skipping MacroDefinition: dgetrs_f77 SUNDIALS_F77_FUNC ( dgetrs , DGETRS )
# Skipping MacroDefinition: dgeqp3_f77 SUNDIALS_F77_FUNC ( dgeqp3 , DGEQP3 )
# Skipping MacroDefinition: dgeqrf_f77 SUNDIALS_F77_FUNC ( dgeqrf , DGEQRF )
# Skipping MacroDefinition: dormqr_f77 SUNDIALS_F77_FUNC ( dormqr , DORMQR )
# Skipping MacroDefinition: dpotrf_f77 SUNDIALS_F77_FUNC ( dpotrf , DPOTRF )
# Skipping MacroDefinition: dpotrs_f77 SUNDIALS_F77_FUNC ( dpotrs , DPOTRS )
# Skipping MacroDefinition: scopy_f77 SUNDIALS_F77_FUNC ( scopy , SCOPY )
# Skipping MacroDefinition: sscal_f77 SUNDIALS_F77_FUNC ( sscal , SSCAL )
# Skipping MacroDefinition: sgemv_f77 SUNDIALS_F77_FUNC ( sgemv , SGEMV )
# Skipping MacroDefinition: strsv_f77 SUNDIALS_F77_FUNC ( strsv , STRSV )
# Skipping MacroDefinition: ssyrk_f77 SUNDIALS_F77_FUNC ( ssyrk , SSKYR )
# Skipping MacroDefinition: sgbtrf_f77 SUNDIALS_F77_FUNC ( sgbtrf , SGBTRF )
# Skipping MacroDefinition: sgbtrs_f77 SUNDIALS_F77_FUNC ( sgbtrs , SGBTRS )
# Skipping MacroDefinition: sgetrf_f77 SUNDIALS_F77_FUNC ( sgetrf , SGETRF )
# Skipping MacroDefinition: sgetrs_f77 SUNDIALS_F77_FUNC ( sgetrs , SGETRS )
# Skipping MacroDefinition: sgeqp3_f77 SUNDIALS_F77_FUNC ( sgeqp3 , SGEQP3 )
# Skipping MacroDefinition: sgeqrf_f77 SUNDIALS_F77_FUNC ( sgeqrf , SGEQRF )
# Skipping MacroDefinition: sormqr_f77 SUNDIALS_F77_FUNC ( sormqr , SORMQR )
# Skipping MacroDefinition: spotrf_f77 SUNDIALS_F77_FUNC ( spotrf , SPOTRF )
# Skipping MacroDefinition: spotrs_f77 SUNDIALS_F77_FUNC ( spotrs , SPOTRS )

const SUNLS_SUCCESS = Cint(0)
const SUNLS_MEM_NULL = Cint(-801)
const SUNLS_ILL_INPUT = Cint(-802)
const SUNLS_MEM_FAIL = Cint(-803)
const SUNLS_ATIMES_NULL = Cint(-804)
const SUNLS_ATIMES_FAIL_UNREC = Cint(-805)
const SUNLS_PSET_FAIL_UNREC = Cint(-806)
const SUNLS_PSOLVE_NULL = Cint(-807)
const SUNLS_PSOLVE_FAIL_UNREC = Cint(-808)
const SUNLS_PACKAGE_FAIL_UNREC = Cint(-809)
const SUNLS_GS_FAIL = Cint(-810)
const SUNLS_QRSOL_FAIL = Cint(-811)
const SUNLS_VECTOROP_ERR = Cint(-812)
const SUNLS_RES_REDUCED = Cint(801)
const SUNLS_CONV_FAIL = Cint(802)
const SUNLS_ATIMES_FAIL_REC = Cint(803)
const SUNLS_PSET_FAIL_REC = Cint(804)
const SUNLS_PSOLVE_FAIL_REC = Cint(805)
const SUNLS_PACKAGE_FAIL_REC = Cint(806)
const SUNLS_QRFACT_FAIL = Cint(807)
const SUNLS_LUFACT_FAIL = Cint(808)
const SUNLS_MSG_RESIDUAL = "\t\tlin. iteration %ld, lin. residual: %g\n"

@cenum SUNLinearSolver_Type::UInt32 begin
    SUNLINEARSOLVER_DIRECT = 0
    SUNLINEARSOLVER_ITERATIVE = 1
    SUNLINEARSOLVER_MATRIX_ITERATIVE = 2
end

@cenum SUNLinearSolver_ID::UInt32 begin
    SUNLINEARSOLVER_BAND = 0
    SUNLINEARSOLVER_DENSE = 1
    SUNLINEARSOLVER_KLU = 2
    SUNLINEARSOLVER_LAPACKBAND = 3
    SUNLINEARSOLVER_LAPACKDENSE = 4
    SUNLINEARSOLVER_PCG = 5
    SUNLINEARSOLVER_SPBCGS = 6
    SUNLINEARSOLVER_SPFGMR = 7
    SUNLINEARSOLVER_SPGMR = 8
    SUNLINEARSOLVER_SPTFQMR = 9
    SUNLINEARSOLVER_SUPERLUDIST = 10
    SUNLINEARSOLVER_SUPERLUMT = 11
    SUNLINEARSOLVER_CUSOLVERSP_BATCHQR = 12
    SUNLINEARSOLVER_CUSTOM = 13
end


struct _generic_SUNLinearSolver_Ops
    gettype::Ptr{Cvoid}
    getid::Ptr{Cvoid}
    setatimes::Ptr{Cvoid}
    setpreconditioner::Ptr{Cvoid}
    setscalingvectors::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    setup::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    numiters::Ptr{Cvoid}
    resnorm::Ptr{Cvoid}
    lastflag::Ptr{Cvoid}
    space::Ptr{Cvoid}
    resid::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

const SUNLinearSolver_Ops = Ptr{_generic_SUNLinearSolver_Ops}

struct _generic_SUNLinearSolver
    content::Ptr{Cvoid}
    ops::SUNLinearSolver_Ops
end

const SUNLinearSolver = Ptr{_generic_SUNLinearSolver}

# Skipping MacroDefinition: SUNMIN ( A , B ) ( ( A ) < ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: SUNMAX ( A , B ) ( ( A ) > ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: SUNSQR ( A ) ( ( A ) * ( A ) )
# Skipping MacroDefinition: SUNRsqrt ( x ) ( ( x ) <= RCONST ( 0.0 ) ? ( RCONST ( 0.0 ) ) : ( ( realtype ) sqrt ( ( double ) ( x ) ) ) )
# Skipping MacroDefinition: SUNRabs ( x ) ( ( realtype ) fabs ( ( double ) ( x ) ) )
# Skipping MacroDefinition: SUNRexp ( x ) ( ( realtype ) exp ( ( double ) ( x ) ) )
# Skipping MacroDefinition: SUNRceil ( x ) ( ( realtype ) ceil ( ( double ) ( x ) ) )

const SUNMAT_SUCCESS = Cint(0)
const SUNMAT_ILL_INPUT = Cint(-701)
const SUNMAT_MEM_FAIL = Cint(-702)
const SUNMAT_OPERATION_FAIL = Cint(-703)
const SUNMAT_MATVEC_SETUP_REQUIRED = Cint(-704)

@cenum SUNMatrix_ID::UInt32 begin
    SUNMATRIX_DENSE = 0
    SUNMATRIX_BAND = 1
    SUNMATRIX_SPARSE = 2
    SUNMATRIX_SLUNRLOC = 3
    SUNMATRIX_CUSPARSE = 4
    SUNMATRIX_CUSTOM = 5
end


struct _generic_SUNMatrix_Ops
    getid::Ptr{Cvoid}
    clone::Ptr{Cvoid}
    destroy::Ptr{Cvoid}
    zero::Ptr{Cvoid}
    copy::Ptr{Cvoid}
    scaleadd::Ptr{Cvoid}
    scaleaddi::Ptr{Cvoid}
    matvecsetup::Ptr{Cvoid}
    matvec::Ptr{Cvoid}
    space::Ptr{Cvoid}
end

const SUNMatrix_Ops = Ptr{_generic_SUNMatrix_Ops}

struct _generic_SUNMatrix
    content::Ptr{Cvoid}
    ops::SUNMatrix_Ops
end

const SUNMatrix = Ptr{_generic_SUNMatrix}
# const MPI_SUNREALTYPE = MPI_DOUBLE
# const MPI_SUNINDEXTYPE = MPI_INT32_T
# const PVEC_REAL_MPI_TYPE = MPI_SUNREALTYPE
# const PVEC_INTEGER_MPI_TYPE = MPI_SUNINDEXTYPE
const SUN_NLS_SUCCESS = Cint(0)
const SUN_NLS_CONTINUE = Cint(901)
const SUN_NLS_CONV_RECVR = Cint(902)
const SUN_NLS_MEM_NULL = Cint(-901)
const SUN_NLS_MEM_FAIL = Cint(-902)
const SUN_NLS_ILL_INPUT = Cint(-903)
const SUN_NLS_VECTOROP_ERR = Cint(-904)
const SUN_NLS_EXT_FAIL = Cint(-905)
const SUN_NLS_MSG_RESIDUAL = "\tnonlin. iteration %ld, nonlin. residual: %g\n"

struct _generic_SUNNonlinearSolver_Ops
    gettype::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    setup::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    free::Ptr{Cvoid}
    setsysfn::Ptr{Cvoid}
    setlsetupfn::Ptr{Cvoid}
    setlsolvefn::Ptr{Cvoid}
    setctestfn::Ptr{Cvoid}
    setmaxiters::Ptr{Cvoid}
    getnumiters::Ptr{Cvoid}
    getcuriter::Ptr{Cvoid}
    getnumconvfails::Ptr{Cvoid}
end

const SUNNonlinearSolver_Ops = Ptr{_generic_SUNNonlinearSolver_Ops}

struct _generic_SUNNonlinearSolver
    content::Ptr{Cvoid}
    ops::SUNNonlinearSolver_Ops
end

const SUNNonlinearSolver = Ptr{_generic_SUNNonlinearSolver}
const SUNNonlinSolSysFn = Ptr{Cvoid}
const SUNNonlinSolLSetupFn = Ptr{Cvoid}
const SUNNonlinSolLSolveFn = Ptr{Cvoid}
const SUNNonlinSolConvTestFn = Ptr{Cvoid}

@cenum SUNNonlinearSolver_Type::UInt32 begin
    SUNNONLINEARSOLVER_ROOTFIND = 0
    SUNNONLINEARSOLVER_FIXEDPOINT = 1
end

@cenum N_Vector_ID::UInt32 begin
    SUNDIALS_NVEC_SERIAL = 0
    SUNDIALS_NVEC_PARALLEL = 1
    SUNDIALS_NVEC_OPENMP = 2
    SUNDIALS_NVEC_PTHREADS = 3
    SUNDIALS_NVEC_PARHYP = 4
    SUNDIALS_NVEC_PETSC = 5
    SUNDIALS_NVEC_CUDA = 6
    SUNDIALS_NVEC_RAJA = 7
    SUNDIALS_NVEC_OPENMPDEV = 8
    SUNDIALS_NVEC_TRILINOS = 9
    SUNDIALS_NVEC_MANYVECTOR = 10
    SUNDIALS_NVEC_MPIMANYVECTOR = 11
    SUNDIALS_NVEC_MPIPLUSX = 12
    SUNDIALS_NVEC_CUSTOM = 13
end


const N_Vector_S = Ptr{N_Vector}

# Skipping MacroDefinition: RCONST ( x ) x

const BIG_REAL = DBL_MAX
const SMALL_REAL = DBL_MIN
const UNIT_ROUNDOFF = DBL_EPSILON
const SUNFALSE = Cint(0)
const SUNTRUE = Cint(1)

struct _SUNLinearSolverContent_Band
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_Band = Ptr{_SUNLinearSolverContent_Band}

struct _SUNLinearSolverContent_Dense
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_Dense = Ptr{_SUNLinearSolverContent_Dense}
const SUNKLU_ORDERING_DEFAULT = Cint(1)
const SUNKLU_REINIT_FULL = Cint(1)
const SUNKLU_REINIT_PARTIAL = Cint(2)

struct klu_symbolic
    symmetry::Cdouble
    est_flops::Cdouble
    lnz::Cdouble
    unz::Cdouble
    Lnz::Ptr{Cdouble}
    n::Cint
    nz::Cint
    P::Ptr{Cint}
    Q::Ptr{Cint}
    R::Ptr{Cint}
    nzoff::Cint
    nblocks::Cint
    maxblock::Cint
    ordering::Cint
    do_btf::Cint
    structural_rank::Cint
end

const sun_klu_symbolic = klu_symbolic

struct klu_numeric
    n::Cint
    nblocks::Cint
    lnz::Cint
    unz::Cint
    max_lnz_block::Cint
    max_unz_block::Cint
    Pnum::Ptr{Cint}
    Pinv::Ptr{Cint}
    Lip::Ptr{Cint}
    Uip::Ptr{Cint}
    Llen::Ptr{Cint}
    Ulen::Ptr{Cint}
    LUbx::Ptr{Ptr{Cvoid}}
    LUsize::Ptr{Csize_t}
    Udiag::Ptr{Cvoid}
    Rs::Ptr{Cdouble}
    worksize::Csize_t
    Work::Ptr{Cvoid}
    Xwork::Ptr{Cvoid}
    Iwork::Ptr{Cint}
    Offp::Ptr{Cint}
    Offi::Ptr{Cint}
    Offx::Ptr{Cvoid}
    nzoff::Cint
end

const sun_klu_numeric = klu_numeric

struct klu_common_struct
    tol::Cdouble
    memgrow::Cdouble
    initmem_amd::Cdouble
    initmem::Cdouble
    maxwork::Cdouble
    btf::Cint
    ordering::Cint
    scale::Cint
    user_order::Ptr{Cvoid}
    user_data::Ptr{Cvoid}
    halt_if_singular::Cint
    status::Cint
    nrealloc::Cint
    structural_rank::Cint
    numerical_rank::Cint
    singular_col::Cint
    noffdiag::Cint
    flops::Cdouble
    rcond::Cdouble
    condest::Cdouble
    rgrowth::Cdouble
    work::Cdouble
    memusage::Csize_t
    mempeak::Csize_t
end

# These are function names in klu.h

# const klu_common = klu_common_struct
# const sun_klu_common = klu_common
# const sun_klu_analyze = klu_analyze
# const sun_klu_factor = klu_factor
# const sun_klu_refactor = klu_refactor
# const sun_klu_rcond = klu_rcond
# const sun_klu_condest = klu_condest
# const sun_klu_defaults = klu_defaults
# const sun_klu_free_symbolic = klu_free_symbolic
# const sun_klu_free_numeric = klu_free_numeric

const KLUSolveFn = Ptr{Cvoid}

struct _SUNLinearSolverContent_KLU
    last_flag::Cint
    first_factorize::Cint
    symbolic::Ptr{klu_symbolic}
    numeric::Ptr{klu_numeric}
    common::klu_common
    klu_solver::KLUSolveFn
end

const SUNLinearSolverContent_KLU = Ptr{_SUNLinearSolverContent_KLU}
const xgbtrf_f77 = dgbtrf_f77
const xgbtrs_f77 = dgbtrs_f77

struct _SUNLinearSolverContent_LapackBand
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_LapackBand = Ptr{_SUNLinearSolverContent_LapackBand}

# const xgetrf_f77 = dgetrf_f77
# const xgetrs_f77 = dgetrs_f77

struct _SUNLinearSolverContent_LapackDense
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_LapackDense = Ptr{_SUNLinearSolverContent_LapackDense}
const SUNPCG_MAXL_DEFAULT = Cint(5)

struct _SUNLinearSolverContent_PCG
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s::N_Vector
    r::N_Vector
    p::N_Vector
    z::N_Vector
    Ap::N_Vector
    print_level::Cint
    info_file::Ptr{FILE}
end

const SUNLinearSolverContent_PCG = Ptr{_SUNLinearSolverContent_PCG}
const SUNSPBCGS_MAXL_DEFAULT = Cint(5)

struct _SUNLinearSolverContent_SPBCGS
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    r::N_Vector
    r_star::N_Vector
    p::N_Vector
    q::N_Vector
    u::N_Vector
    Ap::N_Vector
    vtemp::N_Vector
    print_level::Cint
    info_file::Ptr{FILE}
end

const SUNLinearSolverContent_SPBCGS = Ptr{_SUNLinearSolverContent_SPBCGS}
const SUNSPFGMR_MAXL_DEFAULT = Cint(5)
const SUNSPFGMR_MAXRS_DEFAULT = Cint(0)
const SUNSPFGMR_GSTYPE_DEFAULT = MODIFIED_GS

struct _SUNLinearSolverContent_SPFGMR
    maxl::Cint
    pretype::Cint
    gstype::Cint
    max_restarts::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    V::Ptr{N_Vector}
    Z::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
    cv::Ptr{realtype}
    Xv::Ptr{N_Vector}
    print_level::Cint
    info_file::Ptr{FILE}
end

const SUNLinearSolverContent_SPFGMR = Ptr{_SUNLinearSolverContent_SPFGMR}
const SUNSPGMR_MAXL_DEFAULT = Cint(5)
const SUNSPGMR_MAXRS_DEFAULT = Cint(0)
const SUNSPGMR_GSTYPE_DEFAULT = MODIFIED_GS

struct _SUNLinearSolverContent_SPGMR
    maxl::Cint
    pretype::Cint
    gstype::Cint
    max_restarts::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    V::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
    cv::Ptr{realtype}
    Xv::Ptr{N_Vector}
    print_level::Cint
    info_file::Ptr{FILE}
end

const SUNLinearSolverContent_SPGMR = Ptr{_SUNLinearSolverContent_SPGMR}
const SUNSPTFQMR_MAXL_DEFAULT = Cint(5)

struct _SUNLinearSolverContent_SPTFQMR
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    r_star::N_Vector
    q::N_Vector
    d::N_Vector
    v::N_Vector
    p::N_Vector
    r::Ptr{N_Vector}
    u::N_Vector
    vtemp1::N_Vector
    vtemp2::N_Vector
    vtemp3::N_Vector
    print_level::Cint
    info_file::Ptr{FILE}
end

const SUNLinearSolverContent_SPTFQMR = Ptr{_SUNLinearSolverContent_SPTFQMR}
const SUNSLUMT_ORDERING_DEFAULT = Cint(3)
const xgstrs = dgstrs
const pxgstrf = pdgstrf
const pxgstrf_init = pdgstrf_init
const xCreate_Dense_Matrix = dCreate_Dense_Matrix
const xCreate_CompCol_Matrix = dCreate_CompCol_Matrix

struct _SUNLinearSolverContent_SuperLUMT
    last_flag::Cint
    first_factorize::Cint
    A::Ptr{Cint}
    AC::Ptr{Cint}
    L::Ptr{Cint}
    U::Ptr{Cint}
    B::Ptr{Cint}
    Gstat::Ptr{Cint}
    perm_r::Ptr{sunindextype}
    perm_c::Ptr{sunindextype}
    N::sunindextype
    num_threads::Cint
    diag_pivot_thresh::realtype
    ordering::Cint
    options::Ptr{Cint}
end

const SUNLinearSolverContent_SuperLUMT = Ptr{_SUNLinearSolverContent_SuperLUMT}

# Skipping MacroDefinition: SM_CONTENT_B ( A ) ( ( SUNMatrixContent_Band ) ( A -> content ) )
# Skipping MacroDefinition: SM_ROWS_B ( A ) ( SM_CONTENT_B ( A ) -> M )
# Skipping MacroDefinition: SM_COLUMNS_B ( A ) ( SM_CONTENT_B ( A ) -> N )
# Skipping MacroDefinition: SM_LDATA_B ( A ) ( SM_CONTENT_B ( A ) -> ldata )
# Skipping MacroDefinition: SM_UBAND_B ( A ) ( SM_CONTENT_B ( A ) -> mu )
# Skipping MacroDefinition: SM_LBAND_B ( A ) ( SM_CONTENT_B ( A ) -> ml )
# Skipping MacroDefinition: SM_SUBAND_B ( A ) ( SM_CONTENT_B ( A ) -> s_mu )
# Skipping MacroDefinition: SM_LDIM_B ( A ) ( SM_CONTENT_B ( A ) -> ldim )
# Skipping MacroDefinition: SM_DATA_B ( A ) ( SM_CONTENT_B ( A ) -> data )
# Skipping MacroDefinition: SM_COLS_B ( A ) ( SM_CONTENT_B ( A ) -> cols )
# Skipping MacroDefinition: SM_COLUMN_B ( A , j ) ( ( ( SM_CONTENT_B ( A ) -> cols ) [ j ] ) + SM_SUBAND_B ( A ) )
# Skipping MacroDefinition: SM_COLUMN_ELEMENT_B ( col_j , i , j ) ( col_j [ ( i ) - ( j ) ] )
# Skipping MacroDefinition: SM_ELEMENT_B ( A , i , j ) ( ( SM_CONTENT_B ( A ) -> cols ) [ j ] [ ( i ) - ( j ) + SM_SUBAND_B ( A ) ] )

struct _SUNMatrixContent_Band
    M::sunindextype
    N::sunindextype
    ldim::sunindextype
    mu::sunindextype
    ml::sunindextype
    s_mu::sunindextype
    data::Ptr{realtype}
    ldata::sunindextype
    cols::Ptr{Ptr{realtype}}
end

const SUNMatrixContent_Band = Ptr{_SUNMatrixContent_Band}

# Skipping MacroDefinition: SM_CONTENT_D ( A ) ( ( SUNMatrixContent_Dense ) ( A -> content ) )
# Skipping MacroDefinition: SM_ROWS_D ( A ) ( SM_CONTENT_D ( A ) -> M )
# Skipping MacroDefinition: SM_COLUMNS_D ( A ) ( SM_CONTENT_D ( A ) -> N )
# Skipping MacroDefinition: SM_LDATA_D ( A ) ( SM_CONTENT_D ( A ) -> ldata )
# Skipping MacroDefinition: SM_DATA_D ( A ) ( SM_CONTENT_D ( A ) -> data )
# Skipping MacroDefinition: SM_COLS_D ( A ) ( SM_CONTENT_D ( A ) -> cols )
# Skipping MacroDefinition: SM_COLUMN_D ( A , j ) ( ( SM_CONTENT_D ( A ) -> cols ) [ j ] )
# Skipping MacroDefinition: SM_ELEMENT_D ( A , i , j ) ( ( SM_CONTENT_D ( A ) -> cols ) [ j ] [ i ] )

struct _SUNMatrixContent_Dense
    M::sunindextype
    N::sunindextype
    data::Ptr{realtype}
    ldata::sunindextype
    cols::Ptr{Ptr{realtype}}
end

const SUNMatrixContent_Dense = Ptr{_SUNMatrixContent_Dense}
const CSC_MAT = Cint(0)
const CSR_MAT = Cint(1)

# Skipping MacroDefinition: SM_CONTENT_S ( A ) ( ( SUNMatrixContent_Sparse ) ( A -> content ) )
# Skipping MacroDefinition: SM_ROWS_S ( A ) ( SM_CONTENT_S ( A ) -> M )
# Skipping MacroDefinition: SM_COLUMNS_S ( A ) ( SM_CONTENT_S ( A ) -> N )
# Skipping MacroDefinition: SM_NNZ_S ( A ) ( SM_CONTENT_S ( A ) -> NNZ )
# Skipping MacroDefinition: SM_NP_S ( A ) ( SM_CONTENT_S ( A ) -> NP )
# Skipping MacroDefinition: SM_SPARSETYPE_S ( A ) ( SM_CONTENT_S ( A ) -> sparsetype )
# Skipping MacroDefinition: SM_DATA_S ( A ) ( SM_CONTENT_S ( A ) -> data )
# Skipping MacroDefinition: SM_INDEXVALS_S ( A ) ( SM_CONTENT_S ( A ) -> indexvals )
# Skipping MacroDefinition: SM_INDEXPTRS_S ( A ) ( SM_CONTENT_S ( A ) -> indexptrs )

struct _SUNMatrixContent_Sparse
    M::sunindextype
    N::sunindextype
    NNZ::sunindextype
    NP::sunindextype
    data::Ptr{realtype}
    sparsetype::Cint
    indexvals::Ptr{sunindextype}
    indexptrs::Ptr{sunindextype}
    rowvals::Ptr{Ptr{sunindextype}}
    colptrs::Ptr{Ptr{sunindextype}}
    colvals::Ptr{Ptr{sunindextype}}
    rowptrs::Ptr{Ptr{sunindextype}}
end

const SUNMatrixContent_Sparse = Ptr{_SUNMatrixContent_Sparse}

struct _SUNNonlinearSolverContent_FixedPoint
    Sys::SUNNonlinSolSysFn
    CTest::SUNNonlinSolConvTestFn
    m::Cint
    imap::Ptr{Cint}
    damping::Cint
    beta::realtype
    R::Ptr{realtype}
    gamma::Ptr{realtype}
    cvals::Ptr{realtype}
    df::Ptr{N_Vector}
    dg::Ptr{N_Vector}
    q::Ptr{N_Vector}
    Xvecs::Ptr{N_Vector}
    yprev::N_Vector
    gy::N_Vector
    fold::N_Vector
    gold::N_Vector
    delta::N_Vector
    curiter::Cint
    maxiters::Cint
    niters::Clong
    nconvfails::Clong
    ctest_data::Ptr{Cvoid}
    print_level::Cint
    info_file::Ptr{FILE}
end

const SUNNonlinearSolverContent_FixedPoint = Ptr{_SUNNonlinearSolverContent_FixedPoint}

struct _SUNNonlinearSolverContent_Newton
    Sys::SUNNonlinSolSysFn
    LSetup::SUNNonlinSolLSetupFn
    LSolve::SUNNonlinSolLSolveFn
    CTest::SUNNonlinSolConvTestFn
    delta::N_Vector
    jcur::Cint
    curiter::Cint
    maxiters::Cint
    niters::Clong
    nconvfails::Clong
    ctest_data::Ptr{Cvoid}
    print_level::Cint
    info_file::Ptr{FILE}
end

const SUNNonlinearSolverContent_Newton = Ptr{_SUNNonlinearSolverContent_Newton}

const KLU_OK = Cint(0)
const KLU_SINGULAR = Cint(1)
const KLU_OUT_OF_MEMORY = Cint(-2)
const KLU_INVALID = Cint(-3)
const KLU_TOO_LARGE = Cint(-4)
const KLU_DATE = "Mar 12, 2018"

# Skipping MacroDefinition: KLU_VERSION_CODE ( main , sub ) ( ( main ) * 1000 + ( sub ) )

const KLU_MAIN_VERSION = Cint(1)
const KLU_SUB_VERSION = Cint(3)
const KLU_SUBSUB_VERSION = Cint(9)

# Skipping MacroDefinition: KLU_VERSION KLU_VERSION_CODE ( KLU_MAIN_VERSION , KLU_SUB_VERSION )

struct klu_l_symbolic
    symmetry::Cdouble
    est_flops::Cdouble
    lnz::Cdouble
    unz::Cdouble
    Lnz::Ptr{Cdouble}
    n::Clong
    nz::Clong
    P::Ptr{Clong}
    Q::Ptr{Clong}
    R::Ptr{Clong}
    nzoff::Clong
    nblocks::Clong
    maxblock::Clong
    ordering::Clong
    do_btf::Clong
    structural_rank::Clong
end

struct klu_l_numeric
    n::Clong
    nblocks::Clong
    lnz::Clong
    unz::Clong
    max_lnz_block::Clong
    max_unz_block::Clong
    Pnum::Ptr{Clong}
    Pinv::Ptr{Clong}
    Lip::Ptr{Clong}
    Uip::Ptr{Clong}
    Llen::Ptr{Clong}
    Ulen::Ptr{Clong}
    LUbx::Ptr{Ptr{Cvoid}}
    LUsize::Ptr{Csize_t}
    Udiag::Ptr{Cvoid}
    Rs::Ptr{Cdouble}
    worksize::Csize_t
    Work::Ptr{Cvoid}
    Xwork::Ptr{Cvoid}
    Iwork::Ptr{Clong}
    Offp::Ptr{Clong}
    Offi::Ptr{Clong}
    Offx::Ptr{Cvoid}
    nzoff::Clong
end

struct klu_l_common_struct
    tol::Cdouble
    memgrow::Cdouble
    initmem_amd::Cdouble
    initmem::Cdouble
    maxwork::Cdouble
    btf::Clong
    ordering::Clong
    scale::Clong
    user_order::Ptr{Cvoid}
    user_data::Ptr{Cvoid}
    halt_if_singular::Clong
    status::Clong
    nrealloc::Clong
    structural_rank::Clong
    numerical_rank::Clong
    singular_col::Clong
    noffdiag::Clong
    flops::Cdouble
    rcond::Cdouble
    condest::Cdouble
    rgrowth::Cdouble
    work::Cdouble
    memusage::Csize_t
    mempeak::Csize_t
end

const klu_l_common = klu_l_common_struct
const COLAMD_DATE = "Oct 10, 2014"

# Skipping MacroDefinition: COLAMD_VERSION_CODE ( main , sub ) ( ( main ) * 1000 + ( sub ) )

const COLAMD_MAIN_VERSION = Cint(2)
const COLAMD_SUB_VERSION = Cint(9)
const COLAMD_SUBSUB_VERSION = Cint(1)

# Skipping MacroDefinition: COLAMD_VERSION COLAMD_VERSION_CODE ( COLAMD_MAIN_VERSION , COLAMD_SUB_VERSION )

const COLAMD_KNOBS = Cint(20)
const COLAMD_STATS = Cint(20)
const COLAMD_DENSE_ROW = Cint(0)
const COLAMD_DENSE_COL = Cint(1)
const COLAMD_AGGRESSIVE = Cint(2)
const COLAMD_DEFRAG_COUNT = Cint(2)
const COLAMD_STATUS = Cint(3)
const COLAMD_INFO1 = Cint(4)
const COLAMD_INFO2 = Cint(5)
const COLAMD_INFO3 = Cint(6)
const COLAMD_OK = Cint(0)
const COLAMD_OK_BUT_JUMBLED = Cint(1)
const COLAMD_ERROR_A_not_present = Cint(-1)
const COLAMD_ERROR_p_not_present = Cint(-2)
const COLAMD_ERROR_nrow_negative = Cint(-3)
const COLAMD_ERROR_ncol_negative = Cint(-4)
const COLAMD_ERROR_nnz_negative = Cint(-5)
const COLAMD_ERROR_p0_nonzero = Cint(-6)
const COLAMD_ERROR_A_too_small = Cint(-7)
const COLAMD_ERROR_col_length_negative = Cint(-8)
const COLAMD_ERROR_row_index_out_of_bounds = Cint(-9)
const COLAMD_ERROR_out_of_memory = Cint(-10)
const COLAMD_ERROR_internal_error = Cint(-999)
const SUITESPARSE_PRINTF = printf

# Skipping MacroDefinition: SuiteSparse_long long long int

const SuiteSparse_long_max = LONG_MAX
const SuiteSparse_long_idd = "lld"
const SuiteSparse_long_id = "%"
const ID = "%d"
const Int_MAX = INT_MAX
const COLAMD_recommended = colamd_recommended
const COLAMD_set_defaults = colamd_set_defaults
const COLAMD_MAIN = colamd
const SYMAMD_MAIN = symamd
const COLAMD_report = colamd_report
const SYMAMD_report = symamd_report
