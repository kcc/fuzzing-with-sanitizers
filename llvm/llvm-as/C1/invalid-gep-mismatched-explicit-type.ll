

define void @test(i32* %t) {
  %x = getelementptr i16, i32* %t, i32 0
  ret void
}
