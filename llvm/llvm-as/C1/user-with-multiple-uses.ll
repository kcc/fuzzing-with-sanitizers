










define i32 @main() noreturn nounwind {
entry:
  %call2 = tail call i32 @wwrite(i64 0) nounwind
  ret i32 %call2
}

define internal i32 @wwrite(i64 %i) nounwind readnone {
entry:
  switch i64 %i, label %sw.default [
    i64 3, label %return
    i64 10, label %return
  ]

sw.default:
  ret i32 123

return:
  ret i32 0
}




