

define i1 @test1(double %d) #0 {
entry:
  %cmp = fcmp ule double %d, 0.000000e+00
  ret i1 %cmp
}




 
define i1 @test2(double %d) #0 {
entry:
  %cmp = fcmp ult double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test3(double %d) #0 {
entry:
  %cmp = fcmp ugt double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test4(double %d) #0 {
entry:
  %cmp = fcmp uge double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test5(double %d) #0 {
entry:
  %cmp = fcmp ole double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test6(double %d) #0 {
entry:
  %cmp = fcmp olt double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test7(double %d) #0 {
entry:
  %cmp = fcmp ogt double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test8(double %d) #0 {
entry:
  %cmp = fcmp oge double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test9(double %d) #0 {
entry:
  %cmp = fcmp oeq double %d, 0.000000e+00
  ret i1 %cmp
}





define i1 @test10(double %d) #0 {
entry:
  %cmp = fcmp ueq double %d, 0.000000e+00
  ret i1 %cmp
}







define i1 @test11(double %d) #0 {
entry:
  %cmp = fcmp one double %d, 0.000000e+00
  ret i1 %cmp
}







define i1 @test12(double %d) #0 {
entry:
  %cmp = fcmp une double %d, 0.000000e+00
  ret i1 %cmp
}





attributes #0 = { "use-soft-float"="true" }
