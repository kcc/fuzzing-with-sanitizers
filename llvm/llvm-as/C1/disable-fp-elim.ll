











define i32 @foo1(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e) #0 {
entry:
  %call = tail call i32 @foo2(i32 %a)
  %add = add i32 %c, %b
  %add1 = add i32 %add, %d
  %add2 = add i32 %add1, %e
  %add3 = add i32 %add2, %call
  ret i32 %add3
}

declare i32 @foo2(i32)

attributes #0 = { nounwind "no-frame-pointer-elim"="true" }
