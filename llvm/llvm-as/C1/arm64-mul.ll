




define i128 @t1(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %tmp1 = zext i64 %a to i128
  %tmp2 = zext i64 %b to i128
  %tmp3 = mul i128 %tmp1, %tmp2
  ret i128 %tmp3
}

define i128 @t2(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %tmp1 = sext i64 %a to i128
  %tmp2 = sext i64 %b to i128
  %tmp3 = mul i128 %tmp1, %tmp2
  ret i128 %tmp3
}

define i64 @t3(i32 %a, i32 %b) nounwind {
entry:


  %tmp1 = zext i32 %a to i64
  %tmp2 = zext i32 %b to i64
  %tmp3 = mul i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define i64 @t4(i32 %a, i32 %b) nounwind {
entry:


  %tmp1 = sext i32 %a to i64
  %tmp2 = sext i32 %b to i64
  %tmp3 = mul i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define i64 @t5(i32 %a, i32 %b, i64 %c) nounwind {
entry:


  %tmp1 = zext i32 %a to i64
  %tmp2 = zext i32 %b to i64
  %tmp3 = mul i64 %tmp1, %tmp2
  %tmp4 = add i64 %c, %tmp3
  ret i64 %tmp4
}

define i64 @t6(i32 %a, i32 %b, i64 %c) nounwind {
entry:


  %tmp1 = sext i32 %a to i64
  %tmp2 = sext i32 %b to i64
  %tmp3 = mul i64 %tmp1, %tmp2
  %tmp4 = sub i64 %c, %tmp3
  ret i64 %tmp4
}

define i64 @t7(i32 %a, i32 %b) nounwind {
entry:


  %tmp1 = zext i32 %a to i64
  %tmp2 = zext i32 %b to i64
  %tmp3 = mul i64 %tmp1, %tmp2
  %tmp4 = sub i64 0, %tmp3
  ret i64 %tmp4
}

define i64 @t8(i32 %a, i32 %b) nounwind {
entry:


  %tmp1 = sext i32 %a to i64
  %tmp2 = sext i32 %b to i64
  %tmp3 = mul i64 %tmp1, %tmp2
  %tmp4 = sub i64 0, %tmp3
  ret i64 %tmp4
}
