




define <2 x i64> @f1(i64 %a, i64 %b) {



  %veca = insertelement <2 x i64> undef, i64 %a, i32 0
  %vecb = insertelement <2 x i64> %veca, i64 %b, i32 1
  ret <2 x i64> %vecb
}
