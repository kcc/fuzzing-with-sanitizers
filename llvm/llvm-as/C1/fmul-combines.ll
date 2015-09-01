



define float @fmul2_f32(float %x) {
  %y = fmul float %x, 2.0
  ret float %y
}






define <4 x float> @fmul2_v4f32(<4 x float> %x) {
  %y = fmul <4 x float> %x, <float 2.0, float 2.0, float 2.0, float 2.0>
  ret <4 x float> %y
}




define <4 x float> @constant_fold_fmul_v4f32(<4 x float> %x) {
  %y = fmul <4 x float> <float 4.0, float 4.0, float 4.0, float 4.0>, <float 2.0, float 2.0, float 2.0, float 2.0>
  ret <4 x float> %y
}




define <4 x float> @fmul0_v4f32(<4 x float> %x) #0 {
  %y = fmul <4 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0>
  ret <4 x float> %y
}






define <4 x float> @fmul_c2_c4_v4f32(<4 x float> %x) #0 {
  %y = fmul <4 x float> %x, <float 2.0, float 2.0, float 2.0, float 2.0>
  %z = fmul <4 x float> %y, <float 4.0, float 4.0, float 4.0, float 4.0>
  ret <4 x float> %z
}






define <4 x float> @fmul_c3_c4_v4f32(<4 x float> %x) #0 {
  %y = fmul <4 x float> %x, <float 3.0, float 3.0, float 3.0, float 3.0>
  %z = fmul <4 x float> %y, <float 4.0, float 4.0, float 4.0, float 4.0>
  ret <4 x float> %z
}










define <4 x float> @fmul_v4f32_two_consts_no_splat(<4 x float> %x) #0 {
  %y = fmul <4 x float> %x, <float 1.0, float 2.0, float 3.0, float 4.0>
  %z = fmul <4 x float> %y, <float 5.0, float 6.0, float 7.0, float 8.0>
  ret <4 x float> %z
}










define <4 x float> @fmul_v4f32_two_consts_no_splat_non_canonical(<4 x float> %x) #0 {
  %y = fmul <4 x float> <float 1.0, float 2.0, float 3.0, float 4.0>, %x
  %z = fmul <4 x float> <float 5.0, float 6.0, float 7.0, float 8.0>, %y
  ret <4 x float> %z
}












define <4 x float> @fmul_v4f32_two_consts_no_splat_multiple_use(<4 x float> %x) #0 {
  %y = fmul <4 x float> %x, <float 1.0, float 2.0, float 3.0, float 4.0>
  %z = fmul <4 x float> %y, <float 5.0, float 6.0, float 7.0, float 8.0>
  %a = fadd <4 x float> %y, %z
  ret <4 x float> %a
}




define <4 x float> @PR22698_splats(<4 x float> %a) #0 {
  %mul1 = fmul fast <4 x float> <float 2.0, float 2.0, float 2.0, float 2.0>, <float 3.0, float 3.0, float 3.0, float 3.0>
  %mul2 = fmul fast <4 x float> <float 4.0, float 4.0, float 4.0, float 4.0>, %mul1
  %mul3 = fmul fast <4 x float> %a, %mul2
  ret <4 x float> %mul3








}


define <4 x float> @PR22698_no_splats(<4 x float> %a) #0 {
  %mul1 = fmul fast <4 x float> <float 1.0, float 2.0, float 3.0, float 4.0>, <float 5.0, float 6.0, float 7.0, float 8.0>
  %mul2 = fmul fast <4 x float> <float 9.0, float 10.0, float 11.0, float 12.0>, %mul1
  %mul3 = fmul fast <4 x float> %a, %mul2
  ret <4 x float> %mul3








}






define float @fmul_c2_c4_f32(float %x) #0 {
  %y = fmul float %x, 2.0
  %z = fmul float %y, 4.0
  ret float %z
}






define float @fmul_c3_c4_f32(float %x) #0 {
  %y = fmul float %x, 3.0
  %z = fmul float %y, 4.0
  ret float %z
}




define float @fmul_fneg_fneg_f32(float %x, float %y) {
  %x.neg = fsub float -0.0, %x
  %y.neg = fsub float -0.0, %y
  %mul = fmul float %x.neg, %y.neg
  ret float %mul
}



define <4 x float> @fmul_fneg_fneg_v4f32(<4 x float> %x, <4 x float> %y) {
  %x.neg = fsub <4 x float> <float -0.0, float -0.0, float -0.0, float -0.0>, %x
  %y.neg = fsub <4 x float> <float -0.0, float -0.0, float -0.0, float -0.0>, %y
  %mul = fmul <4 x float> %x.neg, %y.neg
  ret <4 x float> %mul
}

attributes #0 = { "less-precise-fpmad"="true" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "unsafe-fp-math"="true" }
