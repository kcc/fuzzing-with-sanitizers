


define <4 x i32> @test1(<4 x float> %a, <4 x float> %b, <4 x i32> %c) {
  %f = fcmp ult <4 x float> %a, %b
  %r = select <4 x i1> %f, <4 x i32> %c, <4 x i32> zeroinitializer
  ret <4 x i32> %r




}

define <4 x i32> @test2(<4 x float> %a, <4 x float> %b, <4 x i32> %c) {
  %f = fcmp ult <4 x float> %a, %b
  %r = select <4 x i1> %f, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32> %c
  ret <4 x i32> %r




}

define <4 x i32> @test3(<4 x float> %a, <4 x float> %b, <4 x i32> %c) {
  %f = fcmp ult <4 x float> %a, %b
  %r = select <4 x i1> %f, <4 x i32> zeroinitializer, <4 x i32> %c
  ret <4 x i32> %r




}

define <4 x i32> @test4(<4 x float> %a, <4 x float> %b, <4 x i32> %c) {
  %f = fcmp ult <4 x float> %a, %b
  %r = select <4 x i1> %f, <4 x i32> %c, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>
  ret <4 x i32> %r




}

define <4 x i32> @test5(<4 x float> %a, <4 x float> %b, <4 x i32> %c) {
  %f = fcmp ult <4 x float> %a, %b
  %r = select <4 x i1> %f, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32> zeroinitializer
  ret <4 x i32> %r



}

define <4 x i32> @test6(<4 x float> %a, <4 x float> %b, <4 x i32> %c) {
  %f = fcmp ult <4 x float> %a, %b
  %r = select <4 x i1> %f, <4 x i32> zeroinitializer, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>
  ret <4 x i32> %r



}

define <4 x i32> @test7(<4 x float> %a, <4 x float> %b, <4 x i32>* %p) {
  %f = fcmp ult <4 x float> %a, %b
  %s = sext <4 x i1> %f to <4 x i32>
  %l = load <4 x i32>, <4 x i32>* %p
  %r = and <4 x i32> %l, %s
  ret <4 x i32> %r




}
