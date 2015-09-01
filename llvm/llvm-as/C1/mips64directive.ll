


@gl = global i64 1250999896321, align 8


define i64 @foo1() nounwind readonly {
entry:
  %0 = load i64, i64* @gl, align 8
  ret i64 %0
}

