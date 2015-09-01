


define void @vDSP_FFT16_copv(float* nocapture %O, float* nocapture %I, i32 %Direction) nounwind {
entry:
  %.22 = select i1 undef, <4 x float> undef, <4 x float> zeroinitializer 
  %0 = fadd <4 x float> undef, %.22               
  %1 = fsub <4 x float> %0, undef                 
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 2, i32 6, i32 3, i32 7> 
  %3 = shufflevector <4 x float> undef, <4 x float> %2, <4 x i32> <i32 2, i32 3, i32 6, i32 7> 
  %4 = fmul <4 x float> %3, <float 0.000000e+00, float 0x3FED906BC0000000, float 0x3FE6A09E60000000, float 0xBFD87DE2A0000000> 
  %5 = fadd <4 x float> undef, %4                 
  %6 = fadd <4 x float> undef, %5                 
  %7 = fadd <4 x float> undef, %6                 
  br i1 undef, label %bb4, label %bb3

bb3:                                              
  %8 = shufflevector <4 x float> undef, <4 x float> %7, <4 x i32> <i32 2, i32 6, i32 3, i32 7> 
  ret void

bb4:                                              
  ret void
}
