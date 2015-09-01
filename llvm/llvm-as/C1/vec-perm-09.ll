






define <16 x i8> @f1(<16 x i8> %val1, <16 x i8> %val2) {























  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 1, i32 19, i32 6, i32 5,
                                   i32 20, i32 22, i32 1, i32 1,
                                   i32 25, i32 29, i32 11, i32 undef,
                                   i32 31, i32 4, i32 15, i32 19>
  ret <16 x i8> %ret
}
