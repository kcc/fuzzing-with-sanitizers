


define <8 x i16> @test1(<8 x i16> %A, <8 x i16> %B) {














entry:
  %vecinit14 = shufflevector <8 x i16> %B, <8 x i16> undef, <8 x i32> zeroinitializer
  %shl = shl <8 x i16> %A, %vecinit14
  ret <8 x i16> %shl
}

define <4 x i32> @test2(<4 x i32> %A, <4 x i32> %B) {













entry:
  %vecinit6 = shufflevector <4 x i32> %B, <4 x i32> undef, <4 x i32> zeroinitializer
  %shl = shl <4 x i32> %A, %vecinit6
  ret <4 x i32> %shl
}

define <2 x i64> @test3(<2 x i64> %A, <2 x i64> %B) {









entry:
  %vecinit2 = shufflevector <2 x i64> %B, <2 x i64> undef, <2 x i32> zeroinitializer
  %shl = shl <2 x i64> %A, %vecinit2
  ret <2 x i64> %shl
}

define <8 x i16> @test4(<8 x i16> %A, <8 x i16> %B) {














entry:
  %vecinit14 = shufflevector <8 x i16> %B, <8 x i16> undef, <8 x i32> zeroinitializer
  %shr = lshr <8 x i16> %A, %vecinit14
  ret <8 x i16> %shr
}

define <4 x i32> @test5(<4 x i32> %A, <4 x i32> %B) {













entry:
  %vecinit6 = shufflevector <4 x i32> %B, <4 x i32> undef, <4 x i32> zeroinitializer
  %shr = lshr <4 x i32> %A, %vecinit6
  ret <4 x i32> %shr
}

define <2 x i64> @test6(<2 x i64> %A, <2 x i64> %B) {









entry:
  %vecinit2 = shufflevector <2 x i64> %B, <2 x i64> undef, <2 x i32> zeroinitializer
  %shr = lshr <2 x i64> %A, %vecinit2
  ret <2 x i64> %shr
}

define <8 x i16> @test7(<8 x i16> %A, <8 x i16> %B) {














entry:
  %vecinit14 = shufflevector <8 x i16> %B, <8 x i16> undef, <8 x i32> zeroinitializer
  %shr = ashr <8 x i16> %A, %vecinit14
  ret <8 x i16> %shr
}

define <4 x i32> @test8(<4 x i32> %A, <4 x i32> %B) {













entry:
  %vecinit6 = shufflevector <4 x i32> %B, <4 x i32> undef, <4 x i32> zeroinitializer
  %shr = ashr <4 x i32> %A, %vecinit6
  ret <4 x i32> %shr
}
