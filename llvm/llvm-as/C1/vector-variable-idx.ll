


define float @foo(<4 x float> %p, i32 %t) {
  %z = extractelement <4 x float> %p, i32 %t
  ret float %z
}
define <4 x float> @bar(<4 x float> %p, float %f, i32 %t) {
  %z = insertelement <4 x float> %p, float %f, i32 %t
  ret <4 x float> %z
}
