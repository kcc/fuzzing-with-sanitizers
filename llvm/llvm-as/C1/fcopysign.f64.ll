


declare double @llvm.copysign.f64(double, double) nounwind readnone
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) nounwind readnone
declare <4 x double> @llvm.copysign.v4f64(<4 x double>, <4 x double>) nounwind readnone













define void @test_copysign_f64(double addrspace(1)* %out, double %mag, double %sign) nounwind {
  %result = call double @llvm.copysign.f64(double %mag, double %sign)
  store double %result, double addrspace(1)* %out, align 8
  ret void
}



define void @test_copysign_v2f64(<2 x double> addrspace(1)* %out, <2 x double> %mag, <2 x double> %sign) nounwind {
  %result = call <2 x double> @llvm.copysign.v2f64(<2 x double> %mag, <2 x double> %sign)
  store <2 x double> %result, <2 x double> addrspace(1)* %out, align 8
  ret void
}



define void @test_copysign_v4f64(<4 x double> addrspace(1)* %out, <4 x double> %mag, <4 x double> %sign) nounwind {
  %result = call <4 x double> @llvm.copysign.v4f64(<4 x double> %mag, <4 x double> %sign)
  store <4 x double> %result, <4 x double> addrspace(1)* %out, align 8
  ret void
}
