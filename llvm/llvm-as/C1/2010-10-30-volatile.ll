


@g = constant i32 1

define void @foo() {

  %tmp = load volatile i32, i32* @g
  ret void
}
