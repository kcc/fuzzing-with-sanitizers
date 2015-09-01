

@a = global float 3.000000e+00, align 4
@b = global float 4.000000e+00, align 4
@c = global double 3.000000e+00, align 8
@d = global double 4.000000e+00, align 8


define float @emit_xsresp() {
entry:
  %0 = load float, float* @a, align 4
  %1 = load float, float* @b, align 4
  %div = fdiv fast float %0, %1
  ret float %div


}


define float @emit_xsrsqrtesp(float %f) {
entry:
  %f.addr = alloca float, align 4
  store float %f, float* %f.addr, align 4
  %0 = load float, float* %f.addr, align 4
  %1 = load float, float* @b, align 4
  %2 = call float @llvm.sqrt.f32(float %1)
  %div = fdiv fast float %0, %2
  ret float %div


}


declare float @llvm.sqrt.f32(float)


define double @emit_xsredp() {
entry:
  %0 = load double, double* @c, align 8
  %1 = load double, double* @d, align 8
  %div = fdiv fast double %0, %1
  ret double %div


}


define double @emit_xsrsqrtedp(double %f) {
entry:
  %f.addr = alloca double, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %1 = load double, double* @d, align 8
  %2 = call double @llvm.sqrt.f64(double %1)
  %div = fdiv fast double %0, %2
  ret double %div


}


declare double @llvm.sqrt.f64(double) #1
