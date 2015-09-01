









define <2 x i64> @test_long_div(<2 x i64> %num, <2 x i64> %div) {
  %div.r = sdiv <2 x i64> %num, %div
  ret <2 x i64>  %div.r
}



