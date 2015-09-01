


@x = external global i32
@y = external global i32
@z = external global i32

define i32 @main() nounwind {
entry:
  store i32 1, i32* @x, align 4
  store i32 2148, i32* @y, align 4
  store i32 33332, i32* @z, align 4
  ret i32 0
}




