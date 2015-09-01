


define hidden void @foo() nounwind ssp {
entry:




  tail call void asm sideeffect "","~{d8},~{d10},~{d11}"() nounwind


  ret void
}

declare hidden float @bar() nounwind readnone ssp
