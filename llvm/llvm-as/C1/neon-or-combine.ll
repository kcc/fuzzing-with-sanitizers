








define <8 x i8> @test1(<8 x i8> %a, <8 x i8> %b)  {
  %tmp1 = and <8 x i8> %a, < i8 -1, i8 -1, i8 0, i8 0, i8 -1, i8 -1, i8 0, i8 0 >
  %tmp2 = and <8 x i8> %b, < i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 >
  %tmp3 = or <8 x i8> %tmp1, %tmp2
  ret <8 x i8> %tmp3
}




define <16 x i8> @test2(<16 x i8> %a, <16 x i8> %b) {
  %tmp1 = and <16 x i8> %a, < i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1 >
  %tmp2 = and <16 x i8> %b, < i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 >
  %tmp3 = or <16 x i8> %tmp1, %tmp2
  ret <16 x i8> %tmp3
}




