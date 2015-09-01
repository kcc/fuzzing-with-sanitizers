



declare double @llvm.ceil.f64(double) nounwind readnone
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) nounwind readnone
declare <3 x double> @llvm.ceil.v3f64(<3 x double>) nounwind readnone
declare <4 x double> @llvm.ceil.v4f64(<4 x double>) nounwind readnone
declare <8 x double> @llvm.ceil.v8f64(<8 x double>) nounwind readnone
declare <16 x double> @llvm.ceil.v16f64(<16 x double>) nounwind readnone






















define void @fceil_f64(double addrspace(1)* %out, double %x) {
  %y = call double @llvm.ceil.f64(double %x) nounwind readnone
  store double %y, double addrspace(1)* %out
  ret void
}




define void @fceil_v2f64(<2 x double> addrspace(1)* %out, <2 x double> %x) {
  %y = call <2 x double> @llvm.ceil.v2f64(<2 x double> %x) nounwind readnone
  store <2 x double> %y, <2 x double> addrspace(1)* %out
  ret void
}
















define void @fceil_v4f64(<4 x double> addrspace(1)* %out, <4 x double> %x) {
  %y = call <4 x double> @llvm.ceil.v4f64(<4 x double> %x) nounwind readnone
  store <4 x double> %y, <4 x double> addrspace(1)* %out
  ret void
}










define void @fceil_v8f64(<8 x double> addrspace(1)* %out, <8 x double> %x) {
  %y = call <8 x double> @llvm.ceil.v8f64(<8 x double> %x) nounwind readnone
  store <8 x double> %y, <8 x double> addrspace(1)* %out
  ret void
}


















define void @fceil_v16f64(<16 x double> addrspace(1)* %out, <16 x double> %x) {
  %y = call <16 x double> @llvm.ceil.v16f64(<16 x double> %x) nounwind readnone
  store <16 x double> %y, <16 x double> addrspace(1)* %out
  ret void
}
