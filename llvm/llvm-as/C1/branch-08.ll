



declare void @foo() noreturn



define i32 @f1(i32 %a, i32 *%bptr) {






entry:
  %b = load i32 , i32 *%bptr
  %cmp = icmp ult i32 %a, %b
  br i1 %cmp, label %callit, label %return

callit:
  call void @foo()
  unreachable

return:
  ret i32 1
}


define i32 @f2(i32 %a) {





entry:
  %cmp = icmp eq i32 %a, 0
  br i1 %cmp, label %callit, label %return

callit:
  call void @foo()
  unreachable

return:
  ret i32 1
}
