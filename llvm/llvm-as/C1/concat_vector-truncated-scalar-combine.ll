

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"



define <8 x i8> @test_concat_from_truncated_scalar(i32 %x) #0 {
entry:



  %t = trunc i32 %x to i16
  %0 = bitcast i16 %t to <2 x i8>
  %1 = shufflevector <2 x i8> %0, <2 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  ret <8 x i8> %1
}

attributes #0 = { nounwind }
