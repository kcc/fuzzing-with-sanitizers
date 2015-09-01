


@c = internal global i8 0, align 1
@x = internal global i32 0, align 4







define i32 @foo() nounwind {
  ret i32 sub (i32 ptrtoint (i8* @c to i32), i32 ptrtoint (i32* @x to i32))
}
