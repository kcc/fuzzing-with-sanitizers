


define void @t8() nounwind ssp {






  tail call void asm sideeffect "nop", "~{v8}"() nounwind
  ret void
}
