


define i32 @main(i32 %x) nounwind gc "erlang" {
  %puts = tail call i32 @foo(i32 %x)
  ret i32 0
















}

declare i32 @foo(i32)
