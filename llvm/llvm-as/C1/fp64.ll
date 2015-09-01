



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare double @llvm.fabs.f64(double)
declare double @llvm.copysign.f64(double, double)
declare double @llvm.sqrt.f64(double)
declare double @llvm.ceil.f64(double)
declare double @llvm.floor.f64(double)
declare double @llvm.trunc.f64(double)
declare double @llvm.nearbyint.f64(double)
declare double @llvm.rint.f64(double)







define double @fadd64(double %x, double %y) {
  %a = fadd double %x, %y
  ret double %a
}



define double @fsub64(double %x, double %y) {
  %a = fsub double %x, %y
  ret double %a
}



define double @fmul64(double %x, double %y) {
  %a = fmul double %x, %y
  ret double %a
}



define double @fdiv64(double %x, double %y) {
  %a = fdiv double %x, %y
  ret double %a
}



define double @fabs64(double %x) {
  %a = call double @llvm.fabs.f64(double %x)
  ret double %a
}



define double @fneg64(double %x) {
  %a = fsub double -0., %x
  ret double %a
}



define double @copysign64(double %x, double %y) {
  %a = call double @llvm.copysign.f64(double %x, double %y)
  ret double %a
}



define double @sqrt64(double %x) {
  %a = call double @llvm.sqrt.f64(double %x)
  ret double %a
}



define double @ceil64(double %x) {
  %a = call double @llvm.ceil.f64(double %x)
  ret double %a
}



define double @floor64(double %x) {
  %a = call double @llvm.floor.f64(double %x)
  ret double %a
}



define double @trunc64(double %x) {
  %a = call double @llvm.trunc.f64(double %x)
  ret double %a
}



define double @nearestint64(double %x) {
  %a = call double @llvm.nearbyint.f64(double %x)
  ret double %a
}



define double @nearestint64_via_rint(double %x) {
  %a = call double @llvm.rint.f64(double %x)
  ret double %a
}
