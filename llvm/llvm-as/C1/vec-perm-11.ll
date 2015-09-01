






define <4 x i32> @f1(<4 x i32> %val1, <4 x i32> %val2) {























  %ret = shufflevector <4 x i32> %val1, <4 x i32> %val2,
                       <4 x i32> <i32 5, i32 1, i32 undef, i32 7>
  ret <4 x i32> %ret
}
