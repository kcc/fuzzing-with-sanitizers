




define i32* @foo(i32 %a) {
  %gep = getelementptr i32, i32 %a, i32 1
  return i32* %gep
}

