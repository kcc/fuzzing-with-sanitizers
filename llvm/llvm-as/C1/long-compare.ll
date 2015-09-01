




define i1 @test(i64 %x) {
  %tmp = icmp ult i64 %x, 4294967296
  ret i1 %tmp
}
