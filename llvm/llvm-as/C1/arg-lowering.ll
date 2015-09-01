



define <4 x float> @foo0({float, float} %arg0) {
  ret <4 x float> <float 1.0, float 1.0, float 1.0, float 1.0>
}



define <2 x float> @foo1({float, float, i64} %arg0) {
  ret <2 x float> <float 1.0, float 1.0>
}
