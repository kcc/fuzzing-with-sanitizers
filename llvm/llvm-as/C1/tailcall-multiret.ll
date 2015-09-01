

declare double    @llvm.powi.f64(double %Val, i32 %power)
define <3 x double> @julia_foo17589(i32 %arg) {
  %tmp1 = call double @llvm.powi.f64(double 1.000000e+00, i32 %arg)

  %tmp2 = insertelement <3 x double> undef, double %tmp1, i32 0
  %tmp3 = call double @llvm.powi.f64(double 2.000000e+00, i32 %arg)

  %tmp4 = insertelement <3 x double> %tmp2, double %tmp3, i32 1
  %tmp5 = call double @llvm.powi.f64(double 3.000000e+00, i32 %arg)

  %tmp6 = insertelement <3 x double> %tmp4, double %tmp5, i32 2

  ret <3 x double> %tmp6
}
