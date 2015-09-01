

define float @copy_FPR32(float %a, float %b) {


  ret float %b
}
  
define double @copy_FPR64(double %a, double %b) {


  ret double %b
}
  
define fp128 @copy_FPR128(fp128 %a, fp128 %b) {



  ret fp128 %b
}
