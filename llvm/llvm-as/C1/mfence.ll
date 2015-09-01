



define void @test() {
  fence seq_cst
  ret void
}
