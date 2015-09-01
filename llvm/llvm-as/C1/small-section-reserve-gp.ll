


@i = internal unnamed_addr global i32 0, align 4

define i32 @geti() nounwind readonly {
entry:

  %0 = load i32, i32* @i, align 4
  ret i32 %0
}

