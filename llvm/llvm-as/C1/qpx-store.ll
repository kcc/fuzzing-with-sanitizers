
target triple = "powerpc64-bgq-linux"

define void @foo(<4 x double> %v, <4 x double>* %p) {
entry:
  store <4 x double> %v, <4 x double>* %p, align 8
  ret void
}








define void @bar(<4 x double> %v, <4 x double>* %p) {
entry:
  store <4 x double> %v, <4 x double>* %p, align 32
  ret void
}




