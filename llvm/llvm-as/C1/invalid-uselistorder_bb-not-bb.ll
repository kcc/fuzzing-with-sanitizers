

define i32 @foo(i32 %arg) {
  ret i32 %arg
}
uselistorder_bb @foo, %arg, { 1, 0 }
