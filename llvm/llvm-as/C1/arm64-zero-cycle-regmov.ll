


define i32 @t(i32 %a, i32 %b, i32 %c, i32 %d) nounwind ssp {
entry:






  %call = call i32 @foo(i32 %c, i32 %d) nounwind
  %call1 = call i32 @foo(i32 %c, i32 %d) nounwind
  unreachable
}

declare i32 @foo(i32, i32)
