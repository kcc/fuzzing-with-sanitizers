


define float @f(<4 x i16>* nocapture %in) {
  
  
  
  %1 = load <4 x i16>, <4 x i16>* %in
  
  %2 = uitofp <4 x i16> %1 to <4 x float>
  %3 = extractelement <4 x float> %2, i32 0
  %4 = extractelement <4 x float> %2, i32 1
  %5 = extractelement <4 x float> %2, i32 2

  
  %6 = fadd float %3, %4
  %7 = fadd float %6, %5

  ret float %7
}

define float @g(<4 x i16>* nocapture %in) {
  
  %1 = load <4 x i16>, <4 x i16>* %in
  
  %2 = extractelement <4 x i16> %1, i32 0
  
  %3 = uitofp i16 %2 to float
  ret float %3
}
