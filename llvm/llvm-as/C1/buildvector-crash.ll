


define void @RotateStarsFP_Vec() nounwind {
bb.nph372:
  br label %bb8

bb8:                                              
  %0 = fadd <4 x float> undef, <float 0xBFEE353F80000000, float 0xBFEE353F80000000, float 0xBFEE353F80000000, float 0xBFEE353F80000000>
  %1 = fmul <4 x float> %0, undef
  %2 = fmul <4 x float> %1, undef
  %3 = fadd <4 x float> undef, %2
  store <4 x float> %3, <4 x float>* undef, align 4
  br label %bb8


}
