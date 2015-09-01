



declare double @llvm.sqrt.f64(double)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>)

define <2 x double> @f1(<2 x double> %val) {



  %ret = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %val)
  ret <2 x double> %ret
}

define double @f2(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %ret = call double @llvm.sqrt.f64(double %scalar)
  ret double %ret
}
