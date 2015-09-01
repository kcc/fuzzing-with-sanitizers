




define <4 x float> @vec_fsub_zero(<4 x float> %x) {




  %sub = fsub <4 x float> %x, zeroinitializer
  ret <4 x float> %sub
}


define <4 x float> @vec_fneg(<4 x float> %x) {




  %sub = fsub <4 x float> zeroinitializer, %x
  ret <4 x float> %sub
}
