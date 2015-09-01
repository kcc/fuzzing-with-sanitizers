

define float @test1(float %A) {






  %X = fadd float %A, 1.000000e+00
  %Y = fadd float %A, 1.000000e+00
  %r = fsub float %X, %Y
  ret float %r
}

define float @test2(float %A) {



  %X = fadd fast float 1.000000e+00, %A
  %Y = fadd fast float 1.000000e+00, %A
  %r = fsub fast float %X, %Y
  ret float %r
}
