















define void @sample_test() {
  br i1 undef, label %5, label %1


  %2 = load <4 x i8>, <4 x i8>* undef
  %3 = shufflevector <4 x i8> %2, <4 x i8> undef, <4 x i32> <i32 2, i32 2, i32 0, i32 0>
  %4 = shufflevector <4 x i8> %3, <4 x i8> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %4, <4 x i8>* undef
  br label %5


  ret void
}

