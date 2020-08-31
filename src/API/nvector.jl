# Julia wrapper for header: nvector_manyvector.h
# Automatically generated using Clang.jl


function N_VNew_ManyVector(num_subvectors, vec_array)
    ccall((:N_VNew_ManyVector, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{N_Vector}), num_subvectors, vec_array)
end

function N_VGetSubvector_ManyVector(v, vec_num)
    ccall((:N_VGetSubvector_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector, sunindextype), v, vec_num)
end

function N_VGetSubvectorArrayPointer_ManyVector(v, vec_num)
    ccall((:N_VGetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Ptr{realtype}, (N_Vector, sunindextype), v, vec_num)
end

function N_VSetSubvectorArrayPointer_ManyVector(v_data, v, vec_num)
    ccall((:N_VSetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Cint, (Ptr{realtype}, N_Vector, sunindextype), v_data, v, vec_num)
end

function N_VGetNumSubvectors_ManyVector(v)
    ccall((:N_VGetNumSubvectors_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetVectorID_ManyVector(v)
    ccall((:N_VGetVectorID_ManyVector, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VCloneEmpty_ManyVector(w)
    ccall((:N_VCloneEmpty_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_ManyVector(w)
    ccall((:N_VClone_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VDestroy_ManyVector(v)
    ccall((:N_VDestroy_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VSpace_ManyVector(v, lrw, liw)
    ccall((:N_VSpace_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetLength_ManyVector(v)
    ccall((:N_VGetLength_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VLinearSum_ManyVector(a, x, b, y, z)
    ccall((:N_VLinearSum_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst_ManyVector(c, z)
    ccall((:N_VConst_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd_ManyVector(x, y, z)
    ccall((:N_VProd_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_ManyVector(x, y, z)
    ccall((:N_VDiv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale_ManyVector(c, x, z)
    ccall((:N_VScale_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs_ManyVector(x, z)
    ccall((:N_VAbs_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_ManyVector(x, z)
    ccall((:N_VInv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst_ManyVector(x, b, z)
    ccall((:N_VAddConst_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VWrmsNorm_ManyVector(x, w)
    ccall((:N_VWrmsNorm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask_ManyVector(x, w, id)
    ccall((:N_VWrmsNormMask_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWL2Norm_ManyVector(x, w)
    ccall((:N_VWL2Norm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VCompare_ManyVector(c, x, z)
    ccall((:N_VCompare_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VLinearCombination_ManyVector(nvec, c, V, z)
    ccall((:N_VLinearCombination_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VScaleAddMulti_ManyVector(nvec, a, x, Y, Z)
    ccall((:N_VScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti_ManyVector(nvec, x, Y, dotprods)
    ccall((:N_VDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray_ManyVector(nvec, a, X, b, Y, Z)
    ccall((:N_VLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray_ManyVector(nvec, c, X, Z)
    ccall((:N_VScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray_ManyVector(nvecs, c, Z)
    ccall((:N_VConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VWrmsNormVectorArray_ManyVector(nvecs, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_ManyVector(nvec, X, W, id, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VDotProdLocal_ManyVector(x, y)
    ccall((:N_VDotProdLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNormLocal_ManyVector(x)
    ccall((:N_VMaxNormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMinLocal_ManyVector(x)
    ccall((:N_VMinLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VL1NormLocal_ManyVector(x)
    ccall((:N_VL1NormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWSqrSumLocal_ManyVector(x, w)
    ccall((:N_VWSqrSumLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal_ManyVector(x, w, id)
    ccall((:N_VWSqrSumMaskLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VInvTestLocal_ManyVector(x, z)
    ccall((:N_VInvTestLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMaskLocal_ManyVector(c, x, m)
    ccall((:N_VConstrMaskLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotientLocal_ManyVector(num, denom)
    ccall((:N_VMinQuotientLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VEnableFusedOps_ManyVector(v, tf)
    ccall((:N_VEnableFusedOps_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_ManyVector(v, tf)
    ccall((:N_VEnableLinearCombination_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_ManyVector(v, tf)
    ccall((:N_VEnableScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_ManyVector(v, tf)
    ccall((:N_VEnableDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end
# Julia wrapper for header: nvector_serial.h
# Automatically generated using Clang.jl


function N_VNew_Serial(vec_length)
    ccall((:N_VNew_Serial, libsundials_nvecserial), N_Vector, (sunindextype,), vec_length)
end

function N_VNewEmpty_Serial(vec_length)
    ccall((:N_VNewEmpty_Serial, libsundials_nvecserial), N_Vector, (sunindextype,), vec_length)
end

function N_VMake_Serial(vec_length, v_data)
    ccall((:N_VMake_Serial, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{realtype}), vec_length, v_data)
end

function N_VCloneVectorArray_Serial(count, w)
    ccall((:N_VCloneVectorArray_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArrayEmpty_Serial(count, w)
    ccall((:N_VCloneVectorArrayEmpty_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VDestroyVectorArray_Serial(vs, count)
    ccall((:N_VDestroyVectorArray_Serial, libsundials_nvecserial), Cvoid, (Ptr{N_Vector}, Cint), vs, count)
end

function N_VGetLength_Serial(v)
    ccall((:N_VGetLength_Serial, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VPrint_Serial(v)
    ccall((:N_VPrint_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VPrintFile_Serial(v, outfile)
    ccall((:N_VPrintFile_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{FILE}), v, outfile)
end

function N_VGetVectorID_Serial(v)
    ccall((:N_VGetVectorID_Serial, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VCloneEmpty_Serial(w)
    ccall((:N_VCloneEmpty_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_Serial(w)
    ccall((:N_VClone_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VDestroy_Serial(v)
    ccall((:N_VDestroy_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VSpace_Serial(v, lrw, liw)
    ccall((:N_VSpace_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetArrayPointer_Serial(v)
    ccall((:N_VGetArrayPointer_Serial, libsundials_nvecserial), Ptr{realtype}, (N_Vector,), v)
end

function N_VSetArrayPointer_Serial(v_data, v)
    ccall((:N_VSetArrayPointer_Serial, libsundials_nvecserial), Cvoid, (Ptr{realtype}, N_Vector), v_data, v)
end

function N_VLinearSum_Serial(a, x, b, y, z)
    ccall((:N_VLinearSum_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst_Serial(c, z)
    ccall((:N_VConst_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd_Serial(x, y, z)
    ccall((:N_VProd_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_Serial(x, y, z)
    ccall((:N_VDiv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale_Serial(c, x, z)
    ccall((:N_VScale_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs_Serial(x, z)
    ccall((:N_VAbs_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_Serial(x, z)
    ccall((:N_VInv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst_Serial(x, b, z)
    ccall((:N_VAddConst_Serial, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VDotProd_Serial(x, y)
    ccall((:N_VDotProd_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNorm_Serial(x)
    ccall((:N_VMaxNorm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWrmsNorm_Serial(x, w)
    ccall((:N_VWrmsNorm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask_Serial(x, w, id)
    ccall((:N_VWrmsNormMask_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VMin_Serial(x)
    ccall((:N_VMin_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWL2Norm_Serial(x, w)
    ccall((:N_VWL2Norm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VL1Norm_Serial(x)
    ccall((:N_VL1Norm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VCompare_Serial(c, x, z)
    ccall((:N_VCompare_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VInvTest_Serial(x, z)
    ccall((:N_VInvTest_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMask_Serial(c, x, m)
    ccall((:N_VConstrMask_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotient_Serial(num, denom)
    ccall((:N_VMinQuotient_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VLinearCombination_Serial(nvec, c, V, z)
    ccall((:N_VLinearCombination_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VScaleAddMulti_Serial(nvec, a, x, Y, Z)
    ccall((:N_VScaleAddMulti_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti_Serial(nvec, x, Y, dotprods)
    ccall((:N_VDotProdMulti_Serial, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray_Serial(nvec, a, X, b, Y, Z)
    ccall((:N_VLinearSumVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray_Serial(nvec, c, X, Z)
    ccall((:N_VScaleVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray_Serial(nvecs, c, Z)
    ccall((:N_VConstVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VWrmsNormVectorArray_Serial(nvecs, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_Serial(nvecs, X, W, id, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvecs, X, W, id, nrm)
end

function N_VScaleAddMultiVectorArray_Serial(nvec, nsum, a, X, Y, Z)
    ccall((:N_VScaleAddMultiVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}), nvec, nsum, a, X, Y, Z)
end

function N_VLinearCombinationVectorArray_Serial(nvec, nsum, c, X, Z)
    ccall((:N_VLinearCombinationVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Cint, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{N_Vector}), nvec, nsum, c, X, Z)
end

function N_VWSqrSumLocal_Serial(x, w)
    ccall((:N_VWSqrSumLocal_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal_Serial(x, w, id)
    ccall((:N_VWSqrSumMaskLocal_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VEnableFusedOps_Serial(v, tf)
    ccall((:N_VEnableFusedOps_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_Serial(v, tf)
    ccall((:N_VEnableLinearCombination_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_Serial(v, tf)
    ccall((:N_VEnableScaleAddMulti_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_Serial(v, tf)
    ccall((:N_VEnableDotProdMulti_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_Serial(v, tf)
    ccall((:N_VEnableLinearSumVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_Serial(v, tf)
    ccall((:N_VEnableScaleVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_Serial(v, tf)
    ccall((:N_VEnableConstVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_Serial(v, tf)
    ccall((:N_VEnableWrmsNormVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_Serial(v, tf)
    ccall((:N_VEnableWrmsNormMaskVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMultiVectorArray_Serial(v, tf)
    ccall((:N_VEnableScaleAddMultiVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombinationVectorArray_Serial(v, tf)
    ccall((:N_VEnableLinearCombinationVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end
