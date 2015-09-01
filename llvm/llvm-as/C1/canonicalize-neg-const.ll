


define double @test1(double %x, double %y) {







  %mul = fmul double 1.234000e-01, %y
  %add = fadd double %mul, %x
  %mul1 = fmul double -1.234000e-01, %y
  %add2 = fadd double %mul1, %x
  %mul3 = fmul double %add, %add2
  ret double %mul3
}


define double @test2(double %x, double %y) {






  %mul = fmul double %y, -1.234000e-01
  %add = fadd double %mul, %x
  %mul1 = fmul double %y, -1.234000e-01
  %add2 = fadd double %mul1, %x
  %mul3 = fmul double %add, %add2
  ret double %mul3
}


define double @test3(double %x, double %y) {






  %mul = fmul double %y, 1.234000e-01
  %add = fadd double %mul, %x
  %mul1 = fmul double %y, -1.234000e-01
  %add2 = fsub double %x, %mul1
  %mul3 = fmul double %add, %add2
  ret double %mul3
}


define double @test5(double %x, double %y) {





  %mul = fmul double -1.234000e-01, %y
  %sub = fsub double %x, %mul
  ret double %sub
}


define double @test6(double %x, double %y) {





  %mul = fmul double -1.234000e-01, %y
  %sub = fsub double %mul, %x
  ret double %sub
}


define double @test7(double %x, double %y) {





  %mul = fmul double -1.234000e-01, %y
  %add = fadd double %mul, %x
  ret double %add
}


define double @test8(double %x, double %y) {





  %mul = fmul double %y, -1.234000e-01
  %add = fadd double %mul, %x
  ret double %add
}


define double @test9(double %x, double %y) {





  %div = fdiv double -1.234000e-01, %y
  %sub = fsub double %x, %div
  ret double %sub
}


define double @test10(double %x, double %y) {





  %div = fdiv double -1.234000e-01, %y
  %sub = fsub double %div, %x
  ret double %sub
}


define double @test11(double %x, double %y) {





  %div = fdiv double -1.234000e-01, %y
  %add = fadd double %div, %x
  ret double %add
}


define double @test12(double %x, double %y) {





  %div = fdiv double %y, -1.234000e-01
  %add = fadd double %div, %x
  ret double %add
}


define i4 @test13(i4 %x) {



  %mul = mul nsw i4 %x, -2
  %add = add i4 %mul, 3
  ret i4 %add
}
