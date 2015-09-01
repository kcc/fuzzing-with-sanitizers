




define void @foo(i32* noalias %x) {
  %y = call i32* @unclear(i32* %x)
  store i32 0, i32* %x
  store i32 0, i32* %y
  ret void
}

declare i32* @unclear(i32* %a)
