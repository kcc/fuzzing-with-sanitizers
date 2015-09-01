

declare <2 x float> @bar(<2 x float> %input)

define void @foo(<2 x float> %input, <2 x float>* %output) {

entry:
  %call = tail call <2 x float> @bar(<2 x float> %input)


  store <2 x float> %call, <2 x float>* %output, align 8

  ret void
}
