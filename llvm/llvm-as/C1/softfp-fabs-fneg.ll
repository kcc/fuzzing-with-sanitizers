


target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--"

define double @f(double %a) {
  
  
  
  %x = call double @llvm.fabs.f64(double %a) readnone
  ret double %x
}

define float @g(float %a) {
  
  
  
  
  %x = call float @llvm.fabs.f32(float %a) readnone
  ret float %x
}

define double @h(double %a) {
  
  
  
  %x = fsub nsz double -0.0, %a
  ret double %x
}

define float @i(float %a) {
  
  
  
  %x = fsub nsz float -0.0, %a
  ret float %x
}

declare double @llvm.fabs.f64(double) readnone
declare float @llvm.fabs.f32(float) readnone
