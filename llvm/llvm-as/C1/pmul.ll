



define <16 x i8> @mul8c(<16 x i8> %i) nounwind  {































entry:
  %A = mul <16 x i8> %i, < i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117, i8 117 >
  ret <16 x i8> %A
}

define <8 x i16> @mul16c(<8 x i16> %i) nounwind  {




entry:
  %A = mul <8 x i16> %i, < i16 117, i16 117, i16 117, i16 117, i16 117, i16 117, i16 117, i16 117 >
  ret <8 x i16> %A
}

define <4 x i32> @a(<4 x i32> %i) nounwind  {















entry:
  %A = mul <4 x i32> %i, < i32 117, i32 117, i32 117, i32 117 >
  ret <4 x i32> %A
}

define <2 x i64> @b(<2 x i64> %i) nounwind  {










entry:
  %A = mul <2 x i64> %i, < i64 117, i64 117 >
  ret <2 x i64> %A
}

define <16 x i8> @mul8(<16 x i8> %i, <16 x i8> %j) nounwind  {




































entry:
  %A = mul <16 x i8> %i, %j
  ret <16 x i8> %A
}

define <8 x i16> @mul16(<8 x i16> %i, <8 x i16> %j) nounwind  {




entry:
  %A = mul <8 x i16> %i, %j
  ret <8 x i16> %A
}

define <4 x i32> @c(<4 x i32> %i, <4 x i32> %j) nounwind  {















entry:
  %A = mul <4 x i32> %i, %j
  ret <4 x i32> %A
}

define <2 x i64> @d(<2 x i64> %i, <2 x i64> %j) nounwind  {














entry:
  %A = mul <2 x i64> %i, %j
  ret <2 x i64> %A
}

declare void @foo()

define <4 x i32> @e(<4 x i32> %i, <4 x i32> %j) nounwind  {




























entry:
  
  call void @foo()
  %A = mul <4 x i32> %i, %j
  ret <4 x i32> %A
}

define <2 x i64> @f(<2 x i64> %i, <2 x i64> %j) nounwind  {





















entry:
  
  call void @foo()
  %A = mul <2 x i64> %i, %j
  ret <2 x i64> %A
}

define <4 x i64> @b1(<4 x i64> %i) nounwind  {








entry:
  %A = mul <4 x i64> %i, < i64 117, i64 117, i64 117, i64 117 >
  ret <4 x i64> %A
}

define <4 x i64> @b2(<4 x i64> %i, <4 x i64> %j) nounwind  {











entry:
  %A = mul <4 x i64> %i, %j
  ret <4 x i64> %A
}

