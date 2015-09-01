




define i31 @t1(i31 %a, i31 %b, i31 %c) {
entry:
  %add = add nsw i31 %b, %a
  %add1 = add nsw i31 %add, %c
  ret i31 %add1
}


define i32 @foo(i32* %p) {
entry:




  %0 = load i32, i32* %p, align 4
  ret i32 %0
}
