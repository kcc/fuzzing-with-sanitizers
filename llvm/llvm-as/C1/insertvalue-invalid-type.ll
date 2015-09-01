



define void @test() {
entry:
  insertvalue { i32, i32 } undef, i8* null, 0
  ret void
}
