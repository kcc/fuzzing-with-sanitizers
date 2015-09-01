













define i32 @foo(i32 %a, i32 %b) {
  %1 = add i32 %a, %b
  %2 = add nsw i32 %a, %b
  %3 = sub i32 %1, %2
  ret i32 %3
}
