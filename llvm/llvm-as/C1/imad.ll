


define i32 @imad(i32 %a, i32 %b, i32 %c) {

  %val0 = mul i32 %a, %b
  %val1 = add i32 %val0, %c
  ret i32 %val1
}
