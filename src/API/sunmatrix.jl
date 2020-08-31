# Julia wrapper for header: sunmatrix_band.h
# Automatically generated using Clang.jl


function SUNBandMatrix(N, mu, ml)
    ccall((:SUNBandMatrix, libsundials_sunmatrixband), SUNMatrix, (sunindextype, sunindextype, sunindextype), N, mu, ml)
end

function SUNBandMatrixStorage(N, mu, ml, smu)
    ccall((:SUNBandMatrixStorage, libsundials_sunmatrixband), SUNMatrix, (sunindextype, sunindextype, sunindextype, sunindextype), N, mu, ml, smu)
end

function SUNBandMatrix_Print(A, outfile)
    ccall((:SUNBandMatrix_Print, libsundials_sunmatrixband), Cvoid, (SUNMatrix, Ptr{FILE}), A, outfile)
end

function SUNBandMatrix_Rows(A)
    ccall((:SUNBandMatrix_Rows, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_Columns(A)
    ccall((:SUNBandMatrix_Columns, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_LowerBandwidth(A)
    ccall((:SUNBandMatrix_LowerBandwidth, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_UpperBandwidth(A)
    ccall((:SUNBandMatrix_UpperBandwidth, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_StoredUpperBandwidth(A)
    ccall((:SUNBandMatrix_StoredUpperBandwidth, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_LDim(A)
    ccall((:SUNBandMatrix_LDim, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_Data(A)
    ccall((:SUNBandMatrix_Data, libsundials_sunmatrixband), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNBandMatrix_Cols(A)
    ccall((:SUNBandMatrix_Cols, libsundials_sunmatrixband), Ptr{Ptr{realtype}}, (SUNMatrix,), A)
end

function SUNBandMatrix_Column(A, j)
    ccall((:SUNBandMatrix_Column, libsundials_sunmatrixband), Ptr{realtype}, (SUNMatrix, sunindextype), A, j)
end

function SUNMatGetID_Band(A)
    ccall((:SUNMatGetID_Band, libsundials_sunmatrixband), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Band(A)
    ccall((:SUNMatClone_Band, libsundials_sunmatrixband), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Band(A)
    ccall((:SUNMatDestroy_Band, libsundials_sunmatrixband), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero_Band(A)
    ccall((:SUNMatZero_Band, libsundials_sunmatrixband), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Band(A, B)
    ccall((:SUNMatCopy_Band, libsundials_sunmatrixband), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Band(c, A, B)
    ccall((:SUNMatScaleAdd_Band, libsundials_sunmatrixband), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Band(c, A)
    ccall((:SUNMatScaleAddI_Band, libsundials_sunmatrixband), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Band(A, x, y)
    ccall((:SUNMatMatvec_Band, libsundials_sunmatrixband), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Band(A, lenrw, leniw)
    ccall((:SUNMatSpace_Band, libsundials_sunmatrixband), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
# Julia wrapper for header: sunmatrix_dense.h
# Automatically generated using Clang.jl


function SUNDenseMatrix(M, N)
    ccall((:SUNDenseMatrix, libsundials_sunmatrixdense), SUNMatrix, (sunindextype, sunindextype), M, N)
end

function SUNDenseMatrix_Print(A, outfile)
    ccall((:SUNDenseMatrix_Print, libsundials_sunmatrixdense), Cvoid, (SUNMatrix, Ptr{FILE}), A, outfile)
end

function SUNDenseMatrix_Rows(A)
    ccall((:SUNDenseMatrix_Rows, libsundials_sunmatrixdense), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_Columns(A)
    ccall((:SUNDenseMatrix_Columns, libsundials_sunmatrixdense), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_LData(A)
    ccall((:SUNDenseMatrix_LData, libsundials_sunmatrixdense), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_Data(A)
    ccall((:SUNDenseMatrix_Data, libsundials_sunmatrixdense), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNDenseMatrix_Cols(A)
    ccall((:SUNDenseMatrix_Cols, libsundials_sunmatrixdense), Ptr{Ptr{realtype}}, (SUNMatrix,), A)
end

function SUNDenseMatrix_Column(A, j)
    ccall((:SUNDenseMatrix_Column, libsundials_sunmatrixdense), Ptr{realtype}, (SUNMatrix, sunindextype), A, j)
end

function SUNMatGetID_Dense(A)
    ccall((:SUNMatGetID_Dense, libsundials_sunmatrixdense), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Dense(A)
    ccall((:SUNMatClone_Dense, libsundials_sunmatrixdense), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Dense(A)
    ccall((:SUNMatDestroy_Dense, libsundials_sunmatrixdense), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero_Dense(A)
    ccall((:SUNMatZero_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Dense(A, B)
    ccall((:SUNMatCopy_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Dense(c, A, B)
    ccall((:SUNMatScaleAdd_Dense, libsundials_sunmatrixdense), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Dense(c, A)
    ccall((:SUNMatScaleAddI_Dense, libsundials_sunmatrixdense), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Dense(A, x, y)
    ccall((:SUNMatMatvec_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Dense(A, lenrw, leniw)
    ccall((:SUNMatSpace_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
# Julia wrapper for header: sunmatrix_sparse.h
# Automatically generated using Clang.jl


function SUNSparseMatrix(M, N, NNZ, sparsetype)
    ccall((:SUNSparseMatrix, libsundials_sunmatrixsparse), SUNMatrix, (sunindextype, sunindextype, sunindextype, Cint), M, N, NNZ, sparsetype)
end

function SUNSparseFromDenseMatrix(A, droptol, sparsetype)
    ccall((:SUNSparseFromDenseMatrix, libsundials_sunmatrixdense), SUNMatrix, (SUNMatrix, realtype, Cint), A, droptol, sparsetype)
end

function SUNSparseFromBandMatrix(A, droptol, sparsetype)
    ccall((:SUNSparseFromBandMatrix, libsundials_sunmatrixband), SUNMatrix, (SUNMatrix, realtype, Cint), A, droptol, sparsetype)
end

function SUNSparseMatrix_ToCSR(A, Bout)
    ccall((:SUNSparseMatrix_ToCSR, libsundials_sunmatrixsparse), Cint, (SUNMatrix, Ptr{SUNMatrix}), A, Bout)
end

function SUNSparseMatrix_ToCSC(A, Bout)
    ccall((:SUNSparseMatrix_ToCSC, libsundials_sunmatrixsparse), Cint, (SUNMatrix, Ptr{SUNMatrix}), A, Bout)
end

function SUNSparseMatrix_Realloc(A)
    ccall((:SUNSparseMatrix_Realloc, libsundials_sunmatrixsparse), Cint, (SUNMatrix,), A)
end

function SUNSparseMatrix_Reallocate(A, NNZ)
    ccall((:SUNSparseMatrix_Reallocate, libsundials_sunmatrixsparse), Cint, (SUNMatrix, sunindextype), A, NNZ)
end

function SUNSparseMatrix_Print(A, outfile)
    ccall((:SUNSparseMatrix_Print, libsundials_sunmatrixsparse), Cvoid, (SUNMatrix, Ptr{FILE}), A, outfile)
end

function SUNSparseMatrix_Rows(A)
    ccall((:SUNSparseMatrix_Rows, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_Columns(A)
    ccall((:SUNSparseMatrix_Columns, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_NNZ(A)
    ccall((:SUNSparseMatrix_NNZ, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_NP(A)
    ccall((:SUNSparseMatrix_NP, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_SparseType(A)
    ccall((:SUNSparseMatrix_SparseType, libsundials_sunmatrixsparse), Cint, (SUNMatrix,), A)
end

function SUNSparseMatrix_Data(A)
    ccall((:SUNSparseMatrix_Data, libsundials_sunmatrixsparse), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNSparseMatrix_IndexValues(A)
    ccall((:SUNSparseMatrix_IndexValues, libsundials_sunmatrixsparse), Ptr{sunindextype}, (SUNMatrix,), A)
end

function SUNSparseMatrix_IndexPointers(A)
    ccall((:SUNSparseMatrix_IndexPointers, libsundials_sunmatrixsparse), Ptr{sunindextype}, (SUNMatrix,), A)
end

function SUNMatGetID_Sparse(A)
    ccall((:SUNMatGetID_Sparse, libsundials_sunmatrixsparse), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Sparse(A)
    ccall((:SUNMatClone_Sparse, libsundials_sunmatrixsparse), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Sparse(A)
    ccall((:SUNMatDestroy_Sparse, libsundials_sunmatrixsparse), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero_Sparse(A)
    ccall((:SUNMatZero_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Sparse(A, B)
    ccall((:SUNMatCopy_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Sparse(c, A, B)
    ccall((:SUNMatScaleAdd_Sparse, libsundials_sunmatrixsparse), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Sparse(c, A)
    ccall((:SUNMatScaleAddI_Sparse, libsundials_sunmatrixsparse), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Sparse(A, x, y)
    ccall((:SUNMatMatvec_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Sparse(A, lenrw, leniw)
    ccall((:SUNMatSpace_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
