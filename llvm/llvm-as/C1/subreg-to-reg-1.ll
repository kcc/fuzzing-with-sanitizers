









define i64 @foo(i64 %a) nounwind {
  %b = add i64 %a, 4294967295
  %c = and i64 %b, 4294967295
  %d = add i64 %c, 1
  ret i64 %d
}
