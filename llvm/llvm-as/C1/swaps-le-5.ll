




@x = global <2 x double> <double 9.970000e+01, double -1.032220e+02>, align 16
@z = global <2 x double> <double 2.332000e+01, double 3.111111e+01>, align 16

define void @bar0(double %y) {
entry:
  %0 = load <2 x double>, <2 x double>* @x, align 16
  %vecins = insertelement <2 x double> %0, double %y, i32 0
  store <2 x double> %vecins, <2 x double>* @z, align 16
  ret void
}








define void @bar1(double %y) {
entry:
  %0 = load <2 x double>, <2 x double>* @x, align 16
  %vecins = insertelement <2 x double> %0, double %y, i32 1
  store <2 x double> %vecins, <2 x double>* @z, align 16
  ret void
}








define void @baz0() {
entry:
  %0 = load <2 x double>, <2 x double>* @z, align 16
  %1 = load <2 x double>, <2 x double>* @x, align 16
  %vecins = shufflevector <2 x double> %0, <2 x double> %1, <2 x i32> <i32 0, i32 2>
  store <2 x double> %vecins, <2 x double>* @z, align 16
  ret void
}








define void @baz1() {
entry:
  %0 = load <2 x double>, <2 x double>* @z, align 16
  %1 = load <2 x double>, <2 x double>* @x, align 16
  %vecins = shufflevector <2 x double> %0, <2 x double> %1, <2 x i32> <i32 3, i32 1>
  store <2 x double> %vecins, <2 x double>* @z, align 16
  ret void
}








