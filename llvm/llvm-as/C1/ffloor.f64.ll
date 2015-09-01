



declare double @llvm.fabs.f64(double %Val)
declare double @llvm.floor.f64(double) nounwind readnone
declare <2 x double> @llvm.floor.v2f64(<2 x double>) nounwind readnone
declare <3 x double> @llvm.floor.v3f64(<3 x double>) nounwind readnone
declare <4 x double> @llvm.floor.v4f64(<4 x double>) nounwind readnone
declare <8 x double> @llvm.floor.v8f64(<8 x double>) nounwind readnone
declare <16 x double> @llvm.floor.v16f64(<16 x double>) nounwind readnone










define void @ffloor_f64(double addrspace(1)* %out, double %x) {
  %y = call double @llvm.floor.f64(double %x) nounwind readnone
  store double %y, double addrspace(1)* %out
  ret void
}










define void @ffloor_f64_neg(double addrspace(1)* %out, double %x) {
  %neg = fsub double 0.0, %x
  %y = call double @llvm.floor.f64(double %neg) nounwind readnone
  store double %y, double addrspace(1)* %out
  ret void
}










define void @ffloor_f64_neg_abs(double addrspace(1)* %out, double %x) {
  %abs = call double @llvm.fabs.f64(double %x)
  %neg = fsub double 0.0, %abs
  %y = call double @llvm.floor.f64(double %neg) nounwind readnone
  store double %y, double addrspace(1)* %out
  ret void
}




define void @ffloor_v2f64(<2 x double> addrspace(1)* %out, <2 x double> %x) {
  %y = call <2 x double> @llvm.floor.v2f64(<2 x double> %x) nounwind readnone
  store <2 x double> %y, <2 x double> addrspace(1)* %out
  ret void
}
















define void @ffloor_v4f64(<4 x double> addrspace(1)* %out, <4 x double> %x) {
  %y = call <4 x double> @llvm.floor.v4f64(<4 x double> %x) nounwind readnone
  store <4 x double> %y, <4 x double> addrspace(1)* %out
  ret void
}










define void @ffloor_v8f64(<8 x double> addrspace(1)* %out, <8 x double> %x) {
  %y = call <8 x double> @llvm.floor.v8f64(<8 x double> %x) nounwind readnone
  store <8 x double> %y, <8 x double> addrspace(1)* %out
  ret void
}


















define void @ffloor_v16f64(<16 x double> addrspace(1)* %out, <16 x double> %x) {
  %y = call <16 x double> @llvm.floor.v16f64(<16 x double> %x) nounwind readnone
  store <16 x double> %y, <16 x double> addrspace(1)* %out
  ret void
}
