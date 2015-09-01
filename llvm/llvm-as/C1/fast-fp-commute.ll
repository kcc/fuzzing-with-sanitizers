

declare void @use(float)

define void @test1(float %x, float %y) {







  %1 = fmul fast float %x, %y
  %2 = fmul fast float %y, %x
  %3 = fsub fast float %1, %2
  call void @use(float %1)
  call void @use(float %3)
  ret void
}

define float @test2(float %x, float %y) {






  %1 = fmul fast float %x, %y
  %2 = fmul fast float %y, %x
  %3 = fsub fast float %1, %2
  ret float %3
}

define float @test3(float %x, float %y) {





  %1 = fmul fast float %x, %y
  %2 = fmul fast float %y, %x
  %3 = fadd fast float %1, %2
  ret float %3
}
