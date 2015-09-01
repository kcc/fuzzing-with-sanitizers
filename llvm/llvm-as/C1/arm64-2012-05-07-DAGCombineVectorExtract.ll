

define i32 @foo(<4 x i32> %a, i32 %n) nounwind {



  %b = bitcast <4 x i32> %a to i128
  %c = trunc i128 %b to i32
  ret i32 %c
}

define i64 @bar(<2 x i64> %a, i64 %n) nounwind {



  %b = bitcast <2 x i64> %a to i128
  %c = trunc i128 %b to i64
  ret i64 %c
}

