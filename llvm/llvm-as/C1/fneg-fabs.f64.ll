







define void @fneg_fabs_fadd_f64(double addrspace(1)* %out, double %x, double %y) {
  %fabs = call double @llvm.fabs.f64(double %x)
  %fsub = fsub double -0.000000e+00, %fabs
  %fadd = fadd double %y, %fsub
  store double %fadd, double addrspace(1)* %out, align 8
  ret void
}

define void @v_fneg_fabs_fadd_f64(double addrspace(1)* %out, double addrspace(1)* %xptr, double addrspace(1)* %yptr) {
  %x = load double, double addrspace(1)* %xptr, align 8
  %y = load double, double addrspace(1)* %xptr, align 8
  %fabs = call double @llvm.fabs.f64(double %x)
  %fsub = fsub double -0.000000e+00, %fabs
  %fadd = fadd double %y, %fsub
  store double %fadd, double addrspace(1)* %out, align 8
  ret void
}



define void @fneg_fabs_fmul_f64(double addrspace(1)* %out, double %x, double %y) {
  %fabs = call double @llvm.fabs.f64(double %x)
  %fsub = fsub double -0.000000e+00, %fabs
  %fmul = fmul double %y, %fsub
  store double %fmul, double addrspace(1)* %out, align 8
  ret void
}


define void @fneg_fabs_free_f64(double addrspace(1)* %out, i64 %in) {
  %bc = bitcast i64 %in to double
  %fabs = call double @llvm.fabs.f64(double %bc)
  %fsub = fsub double -0.000000e+00, %fabs
  store double %fsub, double addrspace(1)* %out
  ret void
}




define void @fneg_fabs_fn_free_f64(double addrspace(1)* %out, i64 %in) {
  %bc = bitcast i64 %in to double
  %fabs = call double @fabs(double %bc)
  %fsub = fsub double -0.000000e+00, %fabs
  store double %fsub, double addrspace(1)* %out
  ret void
}








define void @fneg_fabs_f64(double addrspace(1)* %out, double %in) {
  %fabs = call double @llvm.fabs.f64(double %in)
  %fsub = fsub double -0.000000e+00, %fabs
  store double %fsub, double addrspace(1)* %out, align 8
  ret void
}






define void @fneg_fabs_v2f64(<2 x double> addrspace(1)* %out, <2 x double> %in) {
  %fabs = call <2 x double> @llvm.fabs.v2f64(<2 x double> %in)
  %fsub = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %fabs
  store <2 x double> %fsub, <2 x double> addrspace(1)* %out
  ret void
}








define void @fneg_fabs_v4f64(<4 x double> addrspace(1)* %out, <4 x double> %in) {
  %fabs = call <4 x double> @llvm.fabs.v4f64(<4 x double> %in)
  %fsub = fsub <4 x double> <double -0.000000e+00, double -0.000000e+00, double -0.000000e+00, double -0.000000e+00>, %fabs
  store <4 x double> %fsub, <4 x double> addrspace(1)* %out
  ret void
}

declare double @fabs(double) readnone
declare double @llvm.fabs.f64(double) readnone
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) readnone
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) readnone
