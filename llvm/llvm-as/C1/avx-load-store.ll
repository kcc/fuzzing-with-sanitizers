








define void @test_256_load(double* nocapture %d, float* nocapture %f, <4 x i64>* nocapture %i) nounwind uwtable ssp {
entry:
  %0 = bitcast double* %d to <4 x double>*
  %tmp1.i = load <4 x double>, <4 x double>* %0, align 32
  %1 = bitcast float* %f to <8 x float>*
  %tmp1.i17 = load <8 x float>, <8 x float>* %1, align 32
  %tmp1.i16 = load <4 x i64>, <4 x i64>* %i, align 32
  tail call void @dummy(<4 x double> %tmp1.i, <8 x float> %tmp1.i17, <4 x i64> %tmp1.i16) nounwind
  store <4 x double> %tmp1.i, <4 x double>* %0, align 32
  store <8 x float> %tmp1.i17, <8 x float>* %1, align 32
  store <4 x i64> %tmp1.i16, <4 x i64>* %i, align 32
  ret void
}

declare void @dummy(<4 x double>, <8 x float>, <4 x i64>)






define <8 x float> @mov00(<8 x float> %v, float * %ptr) nounwind {
  %val = load float, float* %ptr

  %i0 = insertelement <8 x float> zeroinitializer, float %val, i32 0
  ret <8 x float> %i0

}


define <4 x double> @mov01(<4 x double> %v, double * %ptr) nounwind {
  %val = load double, double* %ptr

  %i0 = insertelement <4 x double> zeroinitializer, double %val, i32 0
  ret <4 x double> %i0

}


define void @storev16i16(<16 x i16> %a) nounwind {
  store <16 x i16> %a, <16 x i16>* undef, align 32
  unreachable
}




define void @storev16i16_01(<16 x i16> %a) nounwind {
  store <16 x i16> %a, <16 x i16>* undef, align 4
  unreachable
}



define void @storev32i8(<32 x i8> %a) nounwind {
  store <32 x i8> %a, <32 x i8>* undef, align 32
  unreachable
}




define void @storev32i8_01(<32 x i8> %a) nounwind {
  store <32 x i8> %a, <32 x i8>* undef, align 4
  unreachable
}








define void @double_save(<4 x i32> %A, <4 x i32> %B, <8 x i32>* %P) nounwind ssp {
entry:
  %Z = shufflevector <4 x i32>%A, <4 x i32>%B, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %Z, <8 x i32>* %P, align 16
  ret void
}

declare void @llvm.x86.avx.maskstore.ps.256(i8*, <8 x float>, <8 x float>) nounwind





define void @f_f() nounwind {
allocas:
  br i1 undef, label %cif_mask_all, label %cif_mask_mixed

cif_mask_all:                                     
  unreachable

cif_mask_mixed:                                   
  br i1 undef, label %cif_mixed_test_all, label %cif_mixed_test_any_check

cif_mixed_test_all:                               
  call void @llvm.x86.avx.maskstore.ps.256(i8* undef, <8 x float> <float 0xFFFFFFFFE0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> undef) nounwind
  unreachable

cif_mixed_test_any_check:                         
  unreachable
}








define void @add8i32(<8 x i32>* %ret, <8 x i32>* %bp) nounwind {
  %b = load <8 x i32>, <8 x i32>* %bp, align 1
  %x = add <8 x i32> zeroinitializer, %b
  store <8 x i32> %x, <8 x i32>* %ret, align 1
  ret void
}




define void @add4i64a64(<4 x i64>* %ret, <4 x i64>* %bp) nounwind {
  %b = load <4 x i64>, <4 x i64>* %bp, align 64
  %x = add <4 x i64> zeroinitializer, %b
  store <4 x i64> %x, <4 x i64>* %ret, align 64
  ret void
}






define void @add4i64a16(<4 x i64>* %ret, <4 x i64>* %bp) nounwind {
  %b = load <4 x i64>, <4 x i64>* %bp, align 16
  %x = add <4 x i64> zeroinitializer, %b
  store <4 x i64> %x, <4 x i64>* %ret, align 16
  ret void
}
