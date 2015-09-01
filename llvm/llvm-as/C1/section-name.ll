




define void @test1() {
entry:
  ret void
}




define void @test2() section ".test2" {
entry:
  ret void
}




define linkonce_odr void @test3() {
entry:
  ret void
}
