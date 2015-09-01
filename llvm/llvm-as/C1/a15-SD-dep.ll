




define <2 x float> @t1(float %f) {
  
  
  %i1 = insertelement <2 x float> undef, float %f, i32 1
  %i2 = fadd <2 x float> %i1, %i1
  ret <2 x float> %i2
}



define <4 x float> @t2(float %g, float %f) {
  
  
  %i1 = insertelement <4 x float> undef, float %f, i32 1
  %i2 = fadd <4 x float> %i1, %i1
  ret <4 x float> %i2
}



define arm_aapcs_vfpcc <2 x float> @t3(float %f) {
  
  
  %i1 = insertelement <2 x float> undef, float %f, i32 1
  %i2 = fadd <2 x float> %i1, %i1
  ret <2 x float> %i2
}



define <2 x float> @t4(float %f) {
  
  
  %i1 = insertelement <2 x float> undef, float %f, i32 1
  br label %b

  
b:
  %i2 = fadd <2 x float> %i1, %i1
  ret <2 x float> %i2
}



define arm_aapcs_vfpcc <4 x float> @t5(<4 x float> %q, float %f) {
  
  
  
  
  %i1 = insertelement <4 x float> %q, float %f, i32 1
  %i2 = fadd <4 x float> %i1, %i1
  ret <4 x float> %i2
}




define void @test_DPair1(i32 %vsout, i8* nocapture %out, float %x, float %y) {
entry:
  %0 = insertelement <4 x float> undef, float %x, i32 1
  %1 = insertelement <4 x float> %0, float %y, i32 0
  
  
  
  
  
  switch i32 %vsout, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
  ]

sw.bb:                                            
  %2 = insertelement <4 x float> %1, float 0.000000e+00, i32 0
  br label %sw.bb6

sw.bb6:                                           
  %sum.0 = phi <4 x float> [ %1, %entry ], [ %2, %sw.bb ]
  %3 = extractelement <4 x float> %sum.0, i32 0
  %conv = fptoui float %3 to i8
  store i8 %conv, i8* %out, align 1
  ret void

sw.epilog:                                        
  ret void
}



define void @test_DPair2(i32 %vsout, i8* nocapture %out, float %x) {
entry:
  %0 = insertelement <4 x float> undef, float %x, i32 0
  
  
  switch i32 %vsout, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            
  %1 = insertelement <4 x float> %0, float 0.000000e+00, i32 0
  br label %sw.bb1

sw.bb1:                                           
  %sum.0 = phi <4 x float> [ %0, %entry ], [ %1, %sw.bb ]
  %2 = extractelement <4 x float> %sum.0, i32 0
  %conv = fptoui float %2 to i8
  store i8 %conv, i8* %out, align 1
  br label %sw.epilog

sw.epilog:                                        
  ret void
}