


define void @t() nounwind {


entry:
  call void asm sideeffect alignstack ".long 0xe7ffdefe", ""() nounwind
  ret void
}
