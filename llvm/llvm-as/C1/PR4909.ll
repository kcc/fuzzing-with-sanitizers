

define i32 @f() {
entry:
  br label %return

return:                                           
  ret i32 undef
}

define i32 @g() {
entry:
  %0 = call i32 @f()
  ret i32 %0
}
