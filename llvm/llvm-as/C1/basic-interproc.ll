









define void @test2(i32* %arg1, i32* %arg2) {
  store i32 0, i32* %arg1
  store i32 0, i32* %arg2

  ret void
}

define void @test() {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @test2(i32* %a, i32* %b)

  ret void
}
