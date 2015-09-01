



declare double @llvm.rint.f64(double)
declare double @llvm.nearbyint.f64(double)
declare double @llvm.floor.f64(double)
declare double @llvm.ceil.f64(double)
declare double @llvm.trunc.f64(double)
declare double @llvm.round.f64(double)
declare <2 x double> @llvm.rint.v2f64(<2 x double>)
declare <2 x double> @llvm.nearbyint.v2f64(<2 x double>)
declare <2 x double> @llvm.floor.v2f64(<2 x double>)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>)
declare <2 x double> @llvm.trunc.v2f64(<2 x double>)
declare <2 x double> @llvm.round.v2f64(<2 x double>)

define <2 x double> @f1(<2 x double> %val) {



  %res = call <2 x double> @llvm.rint.v2f64(<2 x double> %val)
  ret <2 x double> %res
}

define <2 x double> @f2(<2 x double> %val) {



  %res = call <2 x double> @llvm.nearbyint.v2f64(<2 x double> %val)
  ret <2 x double> %res
}

define <2 x double> @f3(<2 x double> %val) {



  %res = call <2 x double> @llvm.floor.v2f64(<2 x double> %val)
  ret <2 x double> %res
}

define <2 x double> @f4(<2 x double> %val) {



  %res = call <2 x double> @llvm.ceil.v2f64(<2 x double> %val)
  ret <2 x double> %res
}

define <2 x double> @f5(<2 x double> %val) {



  %res = call <2 x double> @llvm.trunc.v2f64(<2 x double> %val)
  ret <2 x double> %res
}

define <2 x double> @f6(<2 x double> %val) {



  %res = call <2 x double> @llvm.round.v2f64(<2 x double> %val)
  ret <2 x double> %res
}

define double @f7(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %res = call double @llvm.rint.f64(double %scalar)
  ret double %res
}

define double @f8(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %res = call double @llvm.nearbyint.f64(double %scalar)
  ret double %res
}

define double @f9(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %res = call double @llvm.floor.f64(double %scalar)
  ret double %res
}

define double @f10(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %res = call double @llvm.ceil.f64(double %scalar)
  ret double %res
}

define double @f11(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %res = call double @llvm.trunc.f64(double %scalar)
  ret double %res
}

define double @f12(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %res = call double @llvm.round.f64(double %scalar)
  ret double %res
}
