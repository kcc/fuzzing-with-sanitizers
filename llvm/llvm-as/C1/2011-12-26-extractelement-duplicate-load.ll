








define <4 x i32> @test(<4 x i32>* %p) {
  %v = load <4 x i32>, <4 x i32>* %p
  %e = extractelement <4 x i32> %v, i32 2
  %cmp = icmp eq i32 %e, 3
  %sel = select i1 %cmp, <4 x i32> %v, <4 x i32> zeroinitializer
  ret <4 x i32> %sel
}
