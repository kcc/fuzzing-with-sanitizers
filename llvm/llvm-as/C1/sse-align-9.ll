

define <4 x float> @foo(<4 x float>* %p) nounwind {
  %t = load <4 x float>, <4 x float>* %p, align 4
  ret <4 x float> %t
}
define <2 x double> @bar(<2 x double>* %p) nounwind {
  %t = load <2 x double>, <2 x double>* %p, align 8
  ret <2 x double> %t
}
