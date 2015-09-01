


define float @test1(float %arg) {




  %tmp1 = fsub fast float -1.200000e+01, %arg
  %tmp2 = fadd fast float %tmp1, 1.200000e+01
  ret float %tmp2
}

define float @test2(float %reg109, float %reg1111) {






  %reg115 = fadd float %reg109, -3.000000e+01
  %reg116 = fadd float %reg115, %reg1111
  %reg117 = fadd float %reg116, 3.000000e+01
  ret float %reg117
}

define float @test3(float %reg109, float %reg1111) {




  %reg115 = fadd fast float %reg109, -3.000000e+01
  %reg116 = fadd fast float %reg115, %reg1111
  %reg117 = fadd fast float %reg116, 3.000000e+01
  ret float %reg117
}

@fe = external global float
@fa = external global float
@fb = external global float
@fc = external global float
@ff = external global float

define void @test4() {






  %A = load float, float* @fa
  %B = load float, float* @fb
  %C = load float, float* @fc
  %t1 = fadd fast float %A, %B
  %t2 = fadd fast float %t1, %C
  %t3 = fadd fast float %C, %A
  %t4 = fadd fast float %t3, %B
  
  store float %t2, float* @fe
  
  store float %t4, float* @ff
  ret void
}

define void @test5() {






  %A = load float, float* @fa
  %B = load float, float* @fb
  %C = load float, float* @fc
  %t1 = fadd fast float %A, %B
  %t2 = fadd fast float %t1, %C
  %t3 = fadd fast float %C, %A
  %t4 = fadd fast float %t3, %B
  
  store float %t2, float* @fe
  
  store float %t4, float* @ff
  ret void
}

define void @test6() {






  %A = load float, float* @fa
  %B = load float, float* @fb
  %C = load float, float* @fc
  %t1 = fadd fast float %B, %A
  %t2 = fadd fast float %t1, %C
  %t3 = fadd fast float %C, %A
  %t4 = fadd fast float %t3, %B
  
  store float %t2, float* @fe
  
  store float %t4, float* @ff
  ret void
}

define float @test7(float %A, float %B, float %C) {






  %aa = fmul fast float %A, %A
  %aab = fmul fast float %aa, %B
  %ac = fmul fast float %A, %C
  %aac = fmul fast float %ac, %A
  %r = fadd fast float %aab, %aac
  ret float %r
}

define float @test8(float %X, float %Y, float %Z) {





  %A = fsub fast float 0.0, %X
  %B = fmul fast float %A, %Y
  
  %C = fadd fast float %B, %Z
  ret float %C
}

define float @test9(float %X) {




  %Y = fmul fast float %X, 4.700000e+01
  %Z = fadd fast float %Y, %Y
  ret float %Z
}

define float @test10(float %X) {




  %Y = fadd fast float %X ,%X
  %Z = fadd fast float %Y, %X
  ret float %Z
}

define float @test11(float %W) {




  %X = fmul fast float %W, 127.0
  %Y = fadd fast float %X ,%X
  %Z = fadd fast float %Y, %X
  ret float %Z
}

define float @test12(float %X) {





  %A = fsub fast float 1.000000e+00, %X
  %B = fsub fast float 2.000000e+00, %X
  %C = fsub fast float 3.000000e+00, %X
  %Y = fadd fast float %A ,%B
  %Z = fadd fast float %Y, %C
  ret float %Z
}

define float @test13(float %X1, float %X2, float %X3) {





  %A = fsub fast float 0.000000e+00, %X1
  %B = fmul fast float %A, %X2   
  %C = fmul fast float %X1, %X3  
  %D = fadd fast float %B, %C    
  ret float %D
}

define float @test14(float %X1, float %X2) {





  %B = fmul fast float %X1, 47.   
  %C = fmul fast float %X2, -47.  
  %D = fadd fast float %B, %C    
  ret float %D
}

define float @test15(float %arg) {




  %tmp1 = fmul fast float 1.200000e+01, %arg
  %tmp2 = fmul fast float %tmp1, 1.200000e+01
  ret float %tmp2
}


define float @test16(float %b, float %a) {




  %1 = fadd fast float %a, 1234.0
  %2 = fadd fast float %b, %1
  %3 = fsub fast float 0.0, %a
  %4 = fadd fast float %2, %3
  ret float %4
}



define float @test17(float %a, float %b, float %z) {






  %c = fsub fast float 0.000000e+00, %z
  %d = fmul fast float %a, %b
  %e = fmul fast float %c, %d
  %f = fmul fast float %e, 1.234500e+04
  %g = fsub fast float 0.000000e+00, %f
  ret float %g
}

define float @test18(float %a, float %b, float %z) {





  %d = fmul fast float %z, 4.000000e+01
  %c = fsub fast float 0.000000e+00, %d
  %e = fmul fast float %a, %c
  %f = fsub fast float 0.000000e+00, %e
  ret float %f
}


define float @test19(float %A, float %B) {



  %X = fadd fast float -1.200000e+01, %A
  %Y = fsub fast float %X, %B
  %Z = fadd fast float %Y, 1.200000e+01
  ret float %Z
}


define float @test20(float %a, float %b, float %c) nounwind  {










  %tmp3 = fsub fast float %a, %b
  %tmp5 = fsub fast float %tmp3, %c
  %tmp7 = fsub fast float %tmp5, %a
  ret float %tmp7
}
