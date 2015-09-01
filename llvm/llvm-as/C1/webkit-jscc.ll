




define webkit_jscc i32 @simple_jscall(i32 %a, i32 %b, i32 %c) {
  %ab = add i32 %a, %b
  %abc = add i32 %ab, %c
  ret i32 %abc
}








