



define <4 x float> @fneg4(<4 x float> %x) {
  %sub = fsub <4 x float> zeroinitializer, %x
  ret <4 x float> %sub
}
