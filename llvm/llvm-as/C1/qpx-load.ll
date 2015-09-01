
target triple = "powerpc64-bgq-linux"

define <4 x double> @foo(<4 x double>* %p) {
entry:
  %v = load <4 x double>, <4 x double>* %p, align 8
  ret <4 x double> %v
}









define <4 x double> @bar(<4 x double>* %p) {
entry:
  %v = load <4 x double>, <4 x double>* %p, align 32
  ret <4 x double> %v
}




