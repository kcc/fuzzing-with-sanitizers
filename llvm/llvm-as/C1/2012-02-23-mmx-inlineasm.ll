


define void @func() nounwind ssp {

entry:
  call void asm sideeffect "psrlw $0, %mm1", "y,~{dirflag},~{fpsr},~{flags}"(i32 8) nounwind
  unreachable

bb367:                                            
  ret void
}
