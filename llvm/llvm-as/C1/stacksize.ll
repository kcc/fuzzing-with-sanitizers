

define i32 @foo(i32 %a) nounwind readnone {
entry:


  %add = add nsw i32 %a, 1
  ret i32 %add
}
