



define i32 @bar(i32 %a) nounwind {
entry:
  %0 = tail call i32 @foo(i32 %a) nounwind 
  %1 = add nsw i32 %0, 3                          



  ret i32 %1
}

declare i32 @foo(i32)
