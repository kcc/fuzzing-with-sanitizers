




define <16 x i8> @test(<16 x i8> %q0, <16 x i8> %q1, i8* nocapture %dest) nounwind {
entry:


  %0 = bitcast <16 x i8> %q0 to <2 x i64>
  %shuffle.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> zeroinitializer
  %1 = bitcast <16 x i8> %q1 to <2 x i64>
  %shuffle.i4 = shufflevector <2 x i64> %1, <2 x i64> undef, <1 x i32> zeroinitializer
  %shuffle.i3 = shufflevector <1 x i64> %shuffle.i, <1 x i64> %shuffle.i4, <2 x i32> <i32 0, i32 1>
  %2 = bitcast <2 x i64> %shuffle.i3 to <16 x i8>
  ret <16 x i8> %2
}
