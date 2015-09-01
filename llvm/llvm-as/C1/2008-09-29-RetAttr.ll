




define inreg i32 @fn1() {
  ret i32 0
}

define void @fn2() {
  %t = call inreg i32 @fn1()
  ret void
}

