

define i1 @test(double %X) {
  %tmp = fcmp une double %X, %X
  ret i1 %tmp
}
