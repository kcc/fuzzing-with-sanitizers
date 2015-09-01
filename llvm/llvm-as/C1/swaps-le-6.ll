





@x = global <2 x double> <double 9.970000e+01, double -1.032220e+02>, align 16
@z = global <2 x double> <double 2.332000e+01, double 3.111111e+01>, align 16
@y = global double 1.780000e+00, align 8

define void @bar0() {
entry:
  %0 = load <2 x double>, <2 x double>* @x, align 16
  %1 = load double, double* @y, align 8
  %vecins = insertelement <2 x double> %0, double %1, i32 0
  store <2 x double> %vecins, <2 x double>* @z, align 16
  ret void
}









define void @bar1() {
entry:
  %0 = load <2 x double>, <2 x double>* @x, align 16
  %1 = load double, double* @y, align 8
  %vecins = insertelement <2 x double> %0, double %1, i32 1
  store <2 x double> %vecins, <2 x double>* @z, align 16
  ret void
}









