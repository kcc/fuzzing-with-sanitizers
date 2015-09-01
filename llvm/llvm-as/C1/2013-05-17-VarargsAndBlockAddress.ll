


@block_addr = global i8* blockaddress(@varargs_func, %l1)







define internal i32 @varargs_func(i8* %addr, ...) {
  indirectbr i8* %addr, [ label %l1, label %l2 ]
l1:
  ret i32 1
l2:
  ret i32 2
}


define i32 @caller(i8* %addr) {
  %r = call i32 (i8*, ...) @varargs_func(i8* %addr)
  ret i32 %r
}

