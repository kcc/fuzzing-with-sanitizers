

define void @test() {
  fence acquire
  

  fence release
  

  fence acq_rel
  

  ret void
}
