

define <4 x float> @test1() {





  %tmp1 = fsub <4 x float> zeroinitializer, zeroinitializer
  %tmp2 = fmul <4 x float> zeroinitializer, %tmp1
  ret <4 x float> %tmp2
}
