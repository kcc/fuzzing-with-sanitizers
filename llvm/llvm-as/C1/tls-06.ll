







@x = thread_local global i32 0
@y = thread_local global i32 0

define i32 @foo() {
  %valx = load i32, i32* @x
  %valy = load i32, i32* @y
  %add = add nsw i32 %valx, %valy
  ret i32 %add
}
