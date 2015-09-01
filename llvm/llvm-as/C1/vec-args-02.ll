







declare void @bar(<4 x i32>, <4 x i32>, ...)

define void @foo() {













  call void (<4 x i32>, <4 x i32>, ...) @bar
              (<4 x i32> <i32 1, i32 1, i32 1, i32 1>,
               <4 x i32> <i32 2, i32 2, i32 2, i32 2>,
               <4 x i32> <i32 3, i32 3, i32 3, i32 3>,
               <4 x i32> <i32 4, i32 4, i32 4, i32 4>)
  ret void
}
