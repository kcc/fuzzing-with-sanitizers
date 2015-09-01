

define <2 x double> @testi0(<2 x double>* %p1, double* %p2) {
  %v = load <2 x double>, <2 x double>* %p1
  %s = load double, double* %p2
  %r = insertelement <2 x double> %v, double %s, i32 0
  ret <2 x double> %r







}

define <2 x double> @testi1(<2 x double>* %p1, double* %p2) {
  %v = load <2 x double>, <2 x double>* %p1
  %s = load double, double* %p2
  %r = insertelement <2 x double> %v, double %s, i32 1
  ret <2 x double> %r







}

define double @teste0(<2 x double>* %p1) {
  %v = load <2 x double>, <2 x double>* %p1
  %r = extractelement <2 x double> %v, i32 0
  ret double %r







}

define double @teste1(<2 x double>* %p1) {
  %v = load <2 x double>, <2 x double>* %p1
  %r = extractelement <2 x double> %v, i32 1
  ret double %r




}
