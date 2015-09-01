





declare i32 @callee2(i8*)

define i32 @callee1(i32 %count) {
  %a0 = alloca i8, i32 %count, align 4
  %call0 = call i32 @callee2(i8* %a0)
  ret i32 %call0
}







define i32 @caller1(i32 %count) {
  %call0 = call i32 @callee1(i32 0)
  ret i32 %call0
}
