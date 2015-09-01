







define void @fpr128(<4 x float>* %p) nounwind ssp {
entry:
  %x = load <4 x float>, <4 x float>* %p, align 16
  call void asm sideeffect "
  store <4 x float> %x, <4 x float>* %p, align 16
  ret void
}
