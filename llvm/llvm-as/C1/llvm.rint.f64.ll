












define void @rint_f64(double addrspace(1)* %out, double %in) {
entry:
  %0 = call double @llvm.rint.f64(double %in)
  store double %0, double addrspace(1)* %out
  ret void
}




define void @rint_v2f64(<2 x double> addrspace(1)* %out, <2 x double> %in) {
entry:
  %0 = call <2 x double> @llvm.rint.v2f64(<2 x double> %in)
  store <2 x double> %0, <2 x double> addrspace(1)* %out
  ret void
}






define void @rint_v4f64(<4 x double> addrspace(1)* %out, <4 x double> %in) {
entry:
  %0 = call <4 x double> @llvm.rint.v4f64(<4 x double> %in)
  store <4 x double> %0, <4 x double> addrspace(1)* %out
  ret void
}


declare double @llvm.rint.f64(double) #0
declare <2 x double> @llvm.rint.v2f64(<2 x double>) #0
declare <4 x double> @llvm.rint.v4f64(<4 x double>) #0
