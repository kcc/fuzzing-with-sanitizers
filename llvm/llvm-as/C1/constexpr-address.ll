




@ARR = external global [10 x i32], align 4

define void @foo() {






entry:
  store i32 12345, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @ARR, i32 0, i32 2), align 4
  ret void
}
