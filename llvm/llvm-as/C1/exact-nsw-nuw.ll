





define i32 @shift1(i32 %A, i32 %B) {
  %C = lshr exact i32 %A, %B
  %D = shl nuw i32 %C, %B
  ret i32 %D
}




define i32 @shift2(i32 %A, i32 %B) {
  %C = lshr i32 %A, %B
  %D = shl nuw i32 %C, %B
  ret i32 %D
}



define i32 @shift3(i32 %A, i32 %B) {
  %C = ashr exact i32 %A, %B
  %D = shl nuw i32 %C, %B
  ret i32 %D
}



define i32 @shift4(i32 %A, i32 %B) {
  %C = shl nuw i32 %A, %B
  %D = lshr i32 %C, %B
  ret i32 %D
}



define i32 @shift5(i32 %A, i32 %B) {
  %C = shl nsw i32 %A, %B
  %D = ashr i32 %C, %B
  ret i32 %D
}



define i32 @div1(i32 %V) {
  %A = udiv i32 %V, -2147483648
  %B = udiv i32 %A, -2147483648
  ret i32 %B
}



define i32 @div2(i32 %V) {
  %A = sdiv i32 %V, -1
  %B = sdiv i32 %A, -2147483648
  ret i32 %B
}
