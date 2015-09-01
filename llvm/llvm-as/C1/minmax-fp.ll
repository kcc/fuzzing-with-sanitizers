





define double @t1(float %a) {
  
  %1 = fcmp ult float %a, 5.0
  %2 = select i1 %1, float %a, float 5.0
  %3 = fpext float %2 to double
  ret double %3
}





define double @t2(float %a) {
  
  %1 = fcmp ult float %a, 5.0
  %2 = fpext float %a to double
  %3 = select i1 %1, double %2, double 5.0
  ret double %3
}





define float @t4(double %a) {
  
  %1 = fcmp ult double %a, 5.0
  %2 = fptrunc double %a to float
  %3 = select i1 %1, float %2, float 5.0
  ret float %3
}





define double @t5(float %a) {
  
  %1 = fcmp ult float %a, 5.0
  %2 = fpext float %a to double
  %3 = select i1 %1, double %2, double 5.001
  ret double %3
}





define double @t6(float %a) {
  
  %1 = fcmp ult float %a, -0.0
  %2 = fpext float %a to double
  %3 = select i1 %1, double %2, double 0.0
  ret double %3
}





define double @t7(float %a) {
  
  %1 = fcmp ult float %a, 0.0
  %2 = fpext float %a to double
  %3 = select i1 %1, double %2, double -0.0
  ret double %3
}





define i64 @t8(float %a) {
  %1 = fcmp ult float %a, 5.0
  %2 = fptoui float %a to i64
  %3 = select i1 %1, i64 %2, i64 5
  ret i64 %3
}





define i8 @t9(float %a) {
  %1 = fcmp ult float %a, 0.0
  %2 = fptosi float %a to i8
  %3 = select i1 %1, i8 %2, i8 0
  ret i8 %3
}





define i8 @t11(float %a, float %b) {
  
  %1 = fcmp fast ult float %b, %a
  %2 = fptosi float %a to i8
  %3 = fptosi float %b to i8
  %4 = select i1 %1, i8 %3, i8 %2
  ret i8 %4
}





define i8 @t12(float %a, float %b) {
  
  %1 = fcmp nnan ult float %b, %a
  %2 = fptosi float %a to i8
  %3 = fptosi float %b to i8
  %4 = select i1 %1, i8 %3, i8 %2
  ret i8 %4
}





define i8 @t13(float %a) {
  
  %1 = fcmp ult float %a, 1.5
  %2 = fptosi float %a to i8
  %3 = select i1 %1, i8 %2, i8 1
  ret i8 %3
}





define i8 @t14(float %a) {
  
  %1 = fcmp ule float %a, 0.0
  %2 = fptosi float %a to i8
  %3 = select i1 %1, i8 %2, i8 0
  ret i8 %3
}





define i8 @t15(float %a) {
  %1 = fcmp nsz ule float %a, 0.0
  %2 = fptosi float %a to i8
  %3 = select i1 %1, i8 %2, i8 0
  ret i8 %3
}
