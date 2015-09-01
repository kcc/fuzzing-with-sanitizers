

define i8 @test(i8 %x) readnone nounwind {
  %A = udiv i8 %x, 250
  ret i8 %A
}
