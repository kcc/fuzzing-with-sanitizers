





%T = type { i32, [10 x i8] }

@G = external global %T
@G2 = external global %T









define void @test() {
  %D = getelementptr %T, %T* @G, i64 0, i32 0
  %F = getelementptr i32, i32* getelementptr (%T, %T* @G, i64 0, i32 0), i64 0
  %X = getelementptr [10 x i8], [10 x i8]* getelementptr (%T, %T* @G, i64 0, i32 1), i64 0, i64 5

  ret void
}





define void @simplecheck(i32* %arg0) {
  %F = getelementptr i32, i32* getelementptr (%T, %T* @G, i64 0, i32 0), i64 0
  %H = getelementptr %T, %T* @G2, i64 0, i32 0

  ret void
}







%NestedT = type { [1 x [1 x i32]] }
@NT = external global %NestedT

define void @checkNesting(i32* %arg0) {
  %A = getelementptr [1 x i32],
         [1 x i32]* getelementptr
           ([1 x [1 x i32]], [1 x [1 x i32]]* getelementptr (%NestedT, %NestedT* @NT, i64 0, i32 0),
           i64 0,
           i32 0),
         i64 0,
         i32 0
  ret void
}
