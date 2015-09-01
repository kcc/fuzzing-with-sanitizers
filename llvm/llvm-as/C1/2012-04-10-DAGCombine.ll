



define arm_aapcs_vfpcc void @foo(<4 x float> %arg) nounwind align 2 {
bb4:
  %tmp = extractelement <2 x float> undef, i32 0
  br i1 undef, label %bb18, label %bb5

bb5:                                              
  %tmp6 = fadd float %tmp, -1.500000e+01
  %tmp7 = fdiv float %tmp6, 2.000000e+01
  %tmp8 = fadd float %tmp7, 1.000000e+00
  %tmp9 = fdiv float 1.000000e+00, %tmp8
  %tmp10 = fsub float 1.000000e+00, %tmp9
  %tmp11 = fmul float %tmp10, 1.000000e+01
  %tmp12 = fadd float %tmp11, 1.500000e+01
  %tmp13 = fdiv float %tmp12, %tmp
  %tmp14 = insertelement <2 x float> undef, float %tmp13, i32 0
  %tmp15 = shufflevector <2 x float> %tmp14, <2 x float> undef, <4 x i32> zeroinitializer
  %tmp16 = fmul <4 x float> zeroinitializer, %tmp15
  %tmp17 = fadd <4 x float> %tmp16, %arg
  store <4 x float> %tmp17, <4 x float>* undef, align 8
  br label %bb18

bb18:                                             
  ret void
}
