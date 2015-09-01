


target triple = "armv7-apple-ios"



define float @test(float %x, float %y) {
entry:



  %0 = fmul float %x, %y
  %1 = fsub float %0, %0
  ret float %1
}


