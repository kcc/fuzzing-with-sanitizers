





define i32 @f1(i32 %a, i16 %b) {



  %tmp1 = sext i16 %b to i32
  %tmp2 = mul i32 %a, %tmp1
  %tmp3 = ashr i32 %tmp2, 16
  ret i32 %tmp3
}

define i32 @f2(i32 %a, i16 %b, i32 %c) {



  %tmp1 = sext i16 %b to i32
  %tmp2 = mul i32 %a, %tmp1
  %tmp3 = ashr i32 %tmp2, 16
  %tmp4 = add i32 %tmp3, %c
  ret i32 %tmp4
}
