



define float @test1(float %x) {



  %t1 = fmul float %x, 3.0
  %t2 = call float @llvm.fma.f32(float %x, float 2.0, float %t1)
  ret float %t2
}


define float @test2(float %x, float %y) {



  %t1 = fmul float %x, 3.0
  %t2 = call float @llvm.fma.f32(float %t1, float 2.0, float %y)
  ret float %t2
}


define float @test3(float %x, float %y) {



  %t2 = call float @llvm.fma.f32(float %x, float 1.0, float %y)
  ret float %t2
}


define float @test4(float %x, float %y) {



  %t2 = call float @llvm.fma.f32(float %x, float -1.0, float %y)
  ret float %t2
}


define float @test5(float %x) {



  %t2 = call float @llvm.fma.f32(float %x, float 2.0, float %x)
  ret float %t2
}


define float @test6(float %x) {



  %t1 = fsub float -0.0, %x
  %t2 = call float @llvm.fma.f32(float %x, float 5.0, float %t1)
  ret float %t2
}

declare float @llvm.fma.f32(float, float, float)
