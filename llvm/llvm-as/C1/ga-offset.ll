










@ptr = global i32* null
@dst = global [131072 x i32] zeroinitializer

define void @foo() nounwind {
  store i32* getelementptr ([131072 x i32], [131072 x i32]* @dst, i32 0, i32 16), i32** @ptr
  ret void
}
