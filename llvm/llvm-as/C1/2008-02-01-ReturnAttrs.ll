


define internal i32 @deref(i32* %x) nounwind {
entry:
  %tmp2 = load i32, i32* %x, align 4
  ret i32 %tmp2
}

define i32 @f(i32 %x) {
entry:
  %x_addr = alloca i32
  store i32 %x, i32* %x_addr, align 4

  %tmp1 = call i32 @deref( i32* %x_addr ) nounwind
  ret i32 %tmp1
}


