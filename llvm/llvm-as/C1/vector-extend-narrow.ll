


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


define float @g(<4 x i8>* nocapture %in) {


  
  
  
  %1 = load <4 x i8>, <4 x i8>* %in
  
  %2 = uitofp <4 x i8> %1 to <4 x float>
  %3 = extractelement <4 x float> %2, i32 0
  %4 = extractelement <4 x float> %2, i32 1
  %5 = extractelement <4 x float> %2, i32 2

  
  %6 = fadd float %3, %4
  %7 = fadd float %6, %5

  ret float %7
}


define <4 x i8> @h(<4 x float> %v) {
  
  
  %1 = fptoui <4 x float> %v to <4 x i8>
  ret <4 x i8> %1
}


define <4 x i8> @i(<4 x i8>* %x) {


  
  
  
  
  
  
  
  %1 = load <4 x i8>, <4 x i8>* %x, align 4
  %2 = sdiv <4 x i8> zeroinitializer, %1
  ret <4 x i8> %2
}

define <4 x i32> @j(<4 x i8>* %in) nounwind {
  
  
  
  
  %1 = load <4 x i8>, <4 x i8>* %in, align 4
  %2 = zext <4 x i8> %1 to <4 x i32>
  ret <4 x i32> %2
}

