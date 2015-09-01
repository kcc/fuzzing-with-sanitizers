

define float @test1(float %A, float %B) {







  %W = fadd float 5.0, %B
  %X = fadd float -7.0, %A
  %Y = fsub float %X, %W
  %Z = fadd float %Y, 12.0
  ret float %Z
}


define float @test2(float %A, float %B) {




  %W = fadd fast float %B, 5.000000e+00
  %X = fadd fast float %A, -7.000000e+00
  %Y = fsub fast float %X, %W
  %Z = fadd fast float %Y, 1.200000e+01
  ret float %Z

}

define float @test3(float %A, float %B, float %C, float %D) {








  %M = fadd float %A, 1.200000e+01
  %N = fadd float %M, %B
  %O = fadd float %N, %C
  %P = fsub float %D, %O
  %Q = fadd float %P, 1.200000e+01
  ret float %Q
}


define float @test4(float %A, float %B, float %C, float %D) {













  %M = fadd fast float 1.200000e+01, %A
  %N = fadd fast float %M, %B
  %O = fadd fast float %N, %C
  %P = fsub fast float %D, %O
  %Q = fadd fast float 1.200000e+01, %P
  ret float %Q
}
