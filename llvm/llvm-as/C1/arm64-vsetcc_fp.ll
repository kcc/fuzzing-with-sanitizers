
define <2 x i32> @fcmp_one(<2 x float> %x, <2 x float> %y) nounwind optsize readnone {





  %tmp = fcmp one <2 x float> %x, %y
  %or = sext <2 x i1> %tmp to <2 x i32>
  ret <2 x i32> %or
}
