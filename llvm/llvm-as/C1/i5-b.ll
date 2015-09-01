





@llvm_mips_bclri_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_bclri_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_bclri_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_bclri_b_ARG1
  %1 = tail call <16 x i8> @llvm.mips.bclri.b(<16 x i8> %0, i32 7)
  store <16 x i8> %1, <16 x i8>* @llvm_mips_bclri_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.bclri.b(<16 x i8>, i32) nounwind








@llvm_mips_bclri_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_bclri_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_bclri_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_bclri_h_ARG1
  %1 = tail call <8 x i16> @llvm.mips.bclri.h(<8 x i16> %0, i32 7)
  store <8 x i16> %1, <8 x i16>* @llvm_mips_bclri_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.bclri.h(<8 x i16>, i32) nounwind







@llvm_mips_bclri_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_bclri_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_bclri_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_bclri_w_ARG1
  %1 = tail call <4 x i32> @llvm.mips.bclri.w(<4 x i32> %0, i32 7)
  store <4 x i32> %1, <4 x i32>* @llvm_mips_bclri_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.bclri.w(<4 x i32>, i32) nounwind







@llvm_mips_bclri_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_bclri_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_bclri_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_bclri_d_ARG1
  %1 = tail call <2 x i64> @llvm.mips.bclri.d(<2 x i64> %0, i32 7)
  store <2 x i64> %1, <2 x i64>* @llvm_mips_bclri_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.bclri.d(<2 x i64>, i32) nounwind







@llvm_mips_binsli_b_ARG1 = global <16 x i8> zeroinitializer, align 16
@llvm_mips_binsli_b_ARG2 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_binsli_b_RES  = global <16 x i8> zeroinitializer, align 16

define void @llvm_mips_binsli_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_binsli_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_binsli_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.binsli.b(<16 x i8> %0, <16 x i8> %1, i32 7)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_binsli_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.binsli.b(<16 x i8>, <16 x i8>, i32) nounwind











@llvm_mips_binsli_h_ARG1 = global <8 x i16> zeroinitializer, align 16
@llvm_mips_binsli_h_ARG2 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_binsli_h_RES  = global <8 x i16> zeroinitializer, align 16

define void @llvm_mips_binsli_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_binsli_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_binsli_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.binsli.h(<8 x i16> %0, <8 x i16> %1, i32 7)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_binsli_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.binsli.h(<8 x i16>, <8 x i16>, i32) nounwind











@llvm_mips_binsli_w_ARG1 = global <4 x i32> zeroinitializer, align 16
@llvm_mips_binsli_w_ARG2 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_binsli_w_RES  = global <4 x i32> zeroinitializer, align 16

define void @llvm_mips_binsli_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_binsli_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_binsli_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.binsli.w(<4 x i32> %0, <4 x i32> %1, i32 7)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_binsli_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.binsli.w(<4 x i32>, <4 x i32>, i32) nounwind











@llvm_mips_binsli_d_ARG1 = global <2 x i64> zeroinitializer, align 16
@llvm_mips_binsli_d_ARG2 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_binsli_d_RES  = global <2 x i64> zeroinitializer, align 16

define void @llvm_mips_binsli_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_binsli_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_binsli_d_ARG2
  
  
  
  
  %2 = tail call <2 x i64> @llvm.mips.binsli.d(<2 x i64> %0, <2 x i64> %1, i32 61)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_binsli_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.binsli.d(<2 x i64>, <2 x i64>, i32) nounwind











@llvm_mips_binsri_b_ARG1 = global <16 x i8> zeroinitializer, align 16
@llvm_mips_binsri_b_ARG2 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_binsri_b_RES  = global <16 x i8> zeroinitializer, align 16

define void @llvm_mips_binsri_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_binsri_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_binsri_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.binsri.b(<16 x i8> %0, <16 x i8> %1, i32 7)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_binsri_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.binsri.b(<16 x i8>, <16 x i8>, i32) nounwind











@llvm_mips_binsri_h_ARG1 = global <8 x i16> zeroinitializer, align 16
@llvm_mips_binsri_h_ARG2 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_binsri_h_RES  = global <8 x i16> zeroinitializer, align 16

define void @llvm_mips_binsri_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_binsri_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_binsri_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.binsri.h(<8 x i16> %0, <8 x i16> %1, i32 7)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_binsri_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.binsri.h(<8 x i16>, <8 x i16>, i32) nounwind











@llvm_mips_binsri_w_ARG1 = global <4 x i32> zeroinitializer, align 16
@llvm_mips_binsri_w_ARG2 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_binsri_w_RES  = global <4 x i32> zeroinitializer, align 16

define void @llvm_mips_binsri_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_binsri_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_binsri_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.binsri.w(<4 x i32> %0, <4 x i32> %1, i32 7)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_binsri_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.binsri.w(<4 x i32>, <4 x i32>, i32) nounwind











@llvm_mips_binsri_d_ARG1 = global <2 x i64> zeroinitializer, align 16
@llvm_mips_binsri_d_ARG2 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_binsri_d_RES  = global <2 x i64> zeroinitializer, align 16

define void @llvm_mips_binsri_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_binsri_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_binsri_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.binsri.d(<2 x i64> %0, <2 x i64> %1, i32 7)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_binsri_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.binsri.d(<2 x i64>, <2 x i64>, i32) nounwind











@llvm_mips_bnegi_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_bnegi_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_bnegi_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_bnegi_b_ARG1
  %1 = tail call <16 x i8> @llvm.mips.bnegi.b(<16 x i8> %0, i32 7)
  store <16 x i8> %1, <16 x i8>* @llvm_mips_bnegi_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.bnegi.b(<16 x i8>, i32) nounwind







@llvm_mips_bnegi_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_bnegi_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_bnegi_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_bnegi_h_ARG1
  %1 = tail call <8 x i16> @llvm.mips.bnegi.h(<8 x i16> %0, i32 7)
  store <8 x i16> %1, <8 x i16>* @llvm_mips_bnegi_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.bnegi.h(<8 x i16>, i32) nounwind







@llvm_mips_bnegi_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_bnegi_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_bnegi_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_bnegi_w_ARG1
  %1 = tail call <4 x i32> @llvm.mips.bnegi.w(<4 x i32> %0, i32 7)
  store <4 x i32> %1, <4 x i32>* @llvm_mips_bnegi_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.bnegi.w(<4 x i32>, i32) nounwind







@llvm_mips_bnegi_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_bnegi_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_bnegi_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_bnegi_d_ARG1
  %1 = tail call <2 x i64> @llvm.mips.bnegi.d(<2 x i64> %0, i32 7)
  store <2 x i64> %1, <2 x i64>* @llvm_mips_bnegi_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.bnegi.d(<2 x i64>, i32) nounwind







@llvm_mips_bseti_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_bseti_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_bseti_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_bseti_b_ARG1
  %1 = tail call <16 x i8> @llvm.mips.bseti.b(<16 x i8> %0, i32 7)
  store <16 x i8> %1, <16 x i8>* @llvm_mips_bseti_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.bseti.b(<16 x i8>, i32) nounwind







@llvm_mips_bseti_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_bseti_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_bseti_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_bseti_h_ARG1
  %1 = tail call <8 x i16> @llvm.mips.bseti.h(<8 x i16> %0, i32 7)
  store <8 x i16> %1, <8 x i16>* @llvm_mips_bseti_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.bseti.h(<8 x i16>, i32) nounwind







@llvm_mips_bseti_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_bseti_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_bseti_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_bseti_w_ARG1
  %1 = tail call <4 x i32> @llvm.mips.bseti.w(<4 x i32> %0, i32 7)
  store <4 x i32> %1, <4 x i32>* @llvm_mips_bseti_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.bseti.w(<4 x i32>, i32) nounwind







@llvm_mips_bseti_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_bseti_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_bseti_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_bseti_d_ARG1
  %1 = tail call <2 x i64> @llvm.mips.bseti.d(<2 x i64> %0, i32 7)
  store <2 x i64> %1, <2 x i64>* @llvm_mips_bseti_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.bseti.d(<2 x i64>, i32) nounwind







