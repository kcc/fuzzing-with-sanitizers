




define <4 x float> @test1() {



  %1 = trunc <4 x i3> <i3 -1, i3 -22, i3 7, i3 8> to <4 x i1>
  %2 = sitofp <4 x i1> %1 to <4 x float>
  ret <4 x float> %2
}
