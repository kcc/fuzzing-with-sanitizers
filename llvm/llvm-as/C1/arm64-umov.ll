

define zeroext i8 @f1(<16 x i8> %a) {



  %vecext = extractelement <16 x i8> %a, i32 3
  ret i8 %vecext
}

define zeroext i16 @f2(<4 x i16> %a) {



  %vecext = extractelement <4 x i16> %a, i32 2
  ret i16 %vecext
}

define i32 @f3(<2 x i32> %a) {



  %vecext = extractelement <2 x i32> %a, i32 1
  ret i32 %vecext
}

define i64 @f4(<2 x i64> %a) {



  %vecext = extractelement <2 x i64> %a, i32 1
  ret i64 %vecext
}
