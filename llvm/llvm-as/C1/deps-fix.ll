





define <4 x float> @fun_a(<4 x float> %in, <4 x float> %x, float %y) nounwind {



  %1 = insertelement <4 x float> %in, float %y, i32 0
  %2 = fadd <4 x float> %1, %x  
  ret <4 x float> %2
}

define <4 x i32> @fun_b(<4 x i32> %in, <4 x i32> %x, i32 %y) nounwind {


  %1 = insertelement <4 x i32> %in, i32 %y, i32 0
  %2 = add <4 x i32> %1, %x  
  ret <4 x i32> %2
}
