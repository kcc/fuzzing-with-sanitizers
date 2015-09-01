











define i32* @test2(i32* %arg1) {
  store i32 0, i32* %arg1

  %a = alloca i32, align 4
  ret i32* %a
}

define void @test() {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = call i32* @test2(i32* %a)

  ret void
}
