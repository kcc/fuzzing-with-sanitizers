





define float @f1(float %a, float %b) {



  ret float %b
}


define double @f2(double %a, double %b) {



  ret double %b
}



define void @f3(fp128 *%x) {




  %val = load volatile fp128 , fp128 *%x
  %sum = fadd fp128 %val, %val
  store volatile fp128 %sum, fp128 *%x
  store volatile fp128 %val, fp128 *%x
  ret void
}
