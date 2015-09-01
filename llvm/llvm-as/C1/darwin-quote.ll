


define internal i64 @baz() nounwind {
  %tmp = load i64, i64* @"+x"
  ret i64 %tmp


}


@"+x" = external global i64



