






define <8 x i16> @f1(<8 x i16> %val1, <8 x i16> %val2) {























  %ret = shufflevector <8 x i16> %val1, <8 x i16> %val2,
                       <8 x i32> <i32 8, i32 5, i32 undef, i32 6,
                                  i32 11, i32 15, i32 12, i32 0>
  ret <8 x i16> %ret
}
