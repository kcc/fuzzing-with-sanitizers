
target triple = "powerpc64-bgq-linux"

define void @foo(<4 x float> %v, <4 x float>* %p) {
entry:
  store <4 x float> %v, <4 x float>* %p, align 4
  ret void
}








define void @bar(<4 x float> %v, <4 x float>* %p) {
entry:
  store <4 x float> %v, <4 x float>* %p, align 16
  ret void
}




