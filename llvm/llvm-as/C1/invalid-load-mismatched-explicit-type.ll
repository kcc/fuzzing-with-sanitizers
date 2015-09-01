

define void @test(i32* %t) {
  %x = load i16, i32* %t
  ret void
}
