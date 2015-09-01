



declare double @llvm.fabs.f64(double)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>)


define <2 x double> @f1(<2 x double> %val) {



  %ret = call <2 x double> @llvm.fabs.v2f64(<2 x double> %val)
  ret <2 x double> %ret
}


define <2 x double> @f2(<2 x double> %val) {



  %abs = call <2 x double> @llvm.fabs.v2f64(<2 x double> %val)
  %ret = fsub <2 x double> <double -0.0, double -0.0>, %abs
  ret <2 x double> %ret
}


define double @f3(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %ret = call double @llvm.fabs.f64(double %scalar)
  ret double %ret
}


define double @f4(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %abs = call double @llvm.fabs.f64(double %scalar)
  %ret = fsub double -0.0, %abs
  ret double %ret
}
