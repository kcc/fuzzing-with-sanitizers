

define <4 x i64> @test1(<4 x i64> %a) nounwind {
 %b = shufflevector <4 x i64> %a, <4 x i64> undef, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
 ret <4 x i64>%b
 
 
 }

define <8 x i16> @test2(<4 x i16>* %v) nounwind {



  %v9 = load <4 x i16>, <4 x i16> * %v, align 8
  %v10 = shufflevector <4 x i16> %v9, <4 x i16> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %v11 = shufflevector <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %v10, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %v11
}

