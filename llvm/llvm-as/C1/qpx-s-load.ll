
target triple = "powerpc64-bgq-linux"

define <4 x float> @foo(<4 x float>* %p) {
entry:
  %v = load <4 x float>, <4 x float>* %p, align 4
  ret <4 x float> %v
}









define <4 x float> @bar(<4 x float>* %p) {
entry:
  %v = load <4 x float>, <4 x float>* %p, align 16
  ret <4 x float> %v
}




