


define i64 @foo(i64 %a, i64 %b) nounwind {




  %c = add i64 %a, %b
  %d = trunc i64 %c to i32
  %e = zext i32 %d to i64
  ret i64 %e
}
