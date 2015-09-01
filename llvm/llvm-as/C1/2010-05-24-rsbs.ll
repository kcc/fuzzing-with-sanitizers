



define i64 @test(i64 %x) nounwind readnone {
entry:
  %0 = sub nsw i64 1, %x                          
  ret i64 %0
}
