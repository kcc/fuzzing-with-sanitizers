



define arm_aapcs_vfpcc void @foo(i8* nocapture %pBuffer, i32 %numItems) nounwind {
entry:
  br i1 undef, label %return, label %bb.preheader

bb.preheader:                                     
  br label %bb

bb:                                               
  %0 = shufflevector <4 x float> zeroinitializer, <4 x float> undef, <4 x i32> zeroinitializer 
  %1 = insertelement <4 x float> %0, float undef, i32 1 
  %2 = insertelement <4 x float> %1, float undef, i32 2 
  %3 = insertelement <4 x float> %2, float undef, i32 3 
  %4 = fmul <4 x float> undef, %3                 
  %5 = extractelement <4 x float> %4, i32 3       
  store float %5, float* undef, align 4
  br i1 undef, label %return, label %bb

return:                                           
  ret void
}

define arm_aapcs_vfpcc <4 x float> @bar(i8* nocapture %pBuffer, i32 %numItems) nounwind {
  %1 = shufflevector <4 x float> zeroinitializer, <4 x float> undef, <4 x i32> zeroinitializer 
  %2 = insertelement <4 x float> %1, float undef, i32 1 
  %3 = insertelement <4 x float> %2, float undef, i32 2 
  %4 = insertelement <4 x float> %3, float undef, i32 3 
  %5 = shufflevector <4 x float> %4, <4 x float> undef, <2 x i32> <i32 0, i32 1> 
  %6 = shufflevector <2 x float> %5, <2 x float> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1> 
  ret <4 x float> %6
}
