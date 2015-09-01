
















define <8 x i32> @reduced_test_case() {
  %Shuff = shufflevector <8 x i32> zeroinitializer, <8 x i32> zeroinitializer, <8 x i32> <i32 1, i32 3, i32 undef, i32 7, i32 9, i32 11, i32 13, i32 15>
  %B23 = sub <8 x i32> %Shuff, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  ret <8 x i32> %B23
}

