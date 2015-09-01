

declare <4 x float> @bar()

define void @foo(<4 x float>* %ptr) {

  %val = tail call <4 x float> @bar()
  store <4 x float> %val, <4 x float>* %ptr
  ret void
}
