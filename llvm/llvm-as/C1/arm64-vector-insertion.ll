

define void @test0f(float* nocapture %x, float %a) #0 {
entry:
  %0 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %a, i32 0
  %1 = bitcast float* %x to <4 x float>*
  store <4 x float> %0, <4 x float>* %1, align 16
  ret void

  
  
  
  
  


}


define void @test1f(float* nocapture %x, float %a) #0 {
entry:
  %0 = insertelement <4 x float> <float undef, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %a, i32 0
  %1 = bitcast float* %x to <4 x float>*
  store <4 x float> %0, <4 x float>* %1, align 16
  ret void

  
  
  
  
  
  
}
