



declare float @copysignf(float, float) readnone
declare double @copysign(double, double) readnone

declare fp128 @copysignl(fp128, fp128) readnone


define float @f1(float %a, float %b) {




  %res = call float @copysignf(float %a, float %b) readnone
  ret float %res
}


define float @f2(float %a, double %bd) {




  %b = fptrunc double %bd to float
  %res = call float @copysignf(float %a, float %b) readnone
  ret float %res
}


define float @f3(float %a, fp128 *%bptr) {





  %bl = load volatile fp128 , fp128 *%bptr
  %b = fptrunc fp128 %bl to float
  %res = call float @copysignf(float %a, float %b) readnone
  ret float %res
}


define double @f4(double %a, float %bf) {




  %b = fpext float %bf to double
  %res = call double @copysign(double %a, double %b) readnone
  ret double %res
}


define double @f5(double %a, double %b) {




  %res = call double @copysign(double %a, double %b) readnone
  ret double %res
}


define double @f6(double %a, fp128 *%bptr) {





  %bl = load volatile fp128 , fp128 *%bptr
  %b = fptrunc fp128 %bl to double
  %res = call double @copysign(double %a, double %b) readnone
  ret double %res
}




define void @f7(fp128 *%cptr, fp128 *%aptr, float %bf) {







  %a = load volatile fp128 , fp128 *%aptr
  %b = fpext float %bf to fp128
  %c = call fp128 @copysignl(fp128 %a, fp128 %b) readnone
  store fp128 %c, fp128 *%cptr
  ret void
}


define void @f8(fp128 *%cptr, fp128 *%aptr, double %bd) {







  %a = load volatile fp128 , fp128 *%aptr
  %b = fpext double %bd to fp128
  %c = call fp128 @copysignl(fp128 %a, fp128 %b) readnone
  store fp128 %c, fp128 *%cptr
  ret void
}



define void @f9(fp128 *%cptr, fp128 *%aptr, fp128 *%bptr) {








  %a = load volatile fp128 , fp128 *%aptr
  %b = load volatile fp128 , fp128 *%bptr
  %c = call fp128 @copysignl(fp128 %a, fp128 %b) readnone
  store fp128 %c, fp128 *%cptr
  ret void
}
