


define <4 x float> @fV( <4 x float> %a) {
       
       %b = fadd  <4 x float> %a, <float 0.0,float 0.0,float 0.0,float 0.0>
       ret <4 x float> %b
}

define <4 x float> @fW( <4 x float> %a) {
       
       %b = fadd  <4 x float> %a, <float -0.0,float -0.0,float -0.0,float -0.0>
       ret <4 x float> %b
}
