



@varf32 = global float 0.0
@varf64 = global double 0.0

define void @check_float() {


  %val = load float, float* @varf32
  %newval1 = fadd float %val, 8.5
  store volatile float %newval1, float* @varf32


  %newval2 = fadd float %val, 128.0
  store volatile float %newval2, float* @varf32



  ret void
}

define void @check_double() {


  %val = load double, double* @varf64
  %newval1 = fadd double %val, 8.5
  store volatile double %newval1, double* @varf64


  %newval2 = fadd double %val, 128.0
  store volatile double %newval2, double* @varf64



  ret void
}





define float @check_float2() {
  ret float 3.14159274101257324218750
}







define double @check_double2() {
  ret double 3.1415926535897931159979634685441851615905761718750
}

