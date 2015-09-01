



declare double @llvm.trunc.f64(double) nounwind readnone
declare <2 x double> @llvm.trunc.v2f64(<2 x double>) nounwind readnone
declare <3 x double> @llvm.trunc.v3f64(<3 x double>) nounwind readnone
declare <4 x double> @llvm.trunc.v4f64(<4 x double>) nounwind readnone
declare <8 x double> @llvm.trunc.v8f64(<8 x double>) nounwind readnone
declare <16 x double> @llvm.trunc.v16f64(<16 x double>) nounwind readnone





define void @v_ftrunc_f64(double addrspace(1)* %out, double addrspace(1)* %in) {
  %x = load double, double addrspace(1)* %in, align 8
  %y = call double @llvm.trunc.f64(double %x) nounwind readnone
  store double %y, double addrspace(1)* %out, align 8
  ret void
}

















define void @ftrunc_f64(double addrspace(1)* %out, double %x) {
  %y = call double @llvm.trunc.f64(double %x) nounwind readnone
  store double %y, double addrspace(1)* %out
  ret void
}




define void @ftrunc_v2f64(<2 x double> addrspace(1)* %out, <2 x double> %x) {
  %y = call <2 x double> @llvm.trunc.v2f64(<2 x double> %x) nounwind readnone
  store <2 x double> %y, <2 x double> addrspace(1)* %out
  ret void
}
















define void @ftrunc_v4f64(<4 x double> addrspace(1)* %out, <4 x double> %x) {
  %y = call <4 x double> @llvm.trunc.v4f64(<4 x double> %x) nounwind readnone
  store <4 x double> %y, <4 x double> addrspace(1)* %out
  ret void
}










define void @ftrunc_v8f64(<8 x double> addrspace(1)* %out, <8 x double> %x) {
  %y = call <8 x double> @llvm.trunc.v8f64(<8 x double> %x) nounwind readnone
  store <8 x double> %y, <8 x double> addrspace(1)* %out
  ret void
}


















define void @ftrunc_v16f64(<16 x double> addrspace(1)* %out, <16 x double> %x) {
  %y = call <16 x double> @llvm.trunc.v16f64(<16 x double> %x) nounwind readnone
  store <16 x double> %y, <16 x double> addrspace(1)* %out
  ret void
}
