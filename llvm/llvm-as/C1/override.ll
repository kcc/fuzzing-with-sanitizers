






define i32 @foo(i32 %i) {
entry:
  %add = add nsw i32 %i, %i
  ret i32 %add
}


define i32 @main(i32 %argc, i8** %argv) {
entry:
  %a = call i32 @foo(i32 2)
  ret i32 %a
}
