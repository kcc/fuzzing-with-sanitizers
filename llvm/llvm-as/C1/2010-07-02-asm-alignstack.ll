

define void @foo() nounwind ssp {
entry:



  call void asm sideeffect alignstack "# top of block", "~{dirflag},~{fpsr},~{flags},~{edi},~{esi},~{edx},~{ecx},~{eax}"() nounwind
  call void asm sideeffect alignstack ".file \22small.c\22", "~{dirflag},~{fpsr},~{flags}"() nounwind
  call void asm sideeffect alignstack ".line 3", "~{dirflag},~{fpsr},~{flags}"() nounwind
  call void asm sideeffect alignstack "int $$3", "~{dirflag},~{fpsr},~{flags},~{memory}"() nounwind
  br label %return

return:                                           
  ret void
}

define void @bar() nounwind ssp {
entry:



  call void asm sideeffect "# top of block", "~{dirflag},~{fpsr},~{flags},~{edi},~{esi},~{edx},~{ecx},~{eax}"() nounwind
  call void asm sideeffect ".file \22small.c\22", "~{dirflag},~{fpsr},~{flags}"() nounwind
  call void asm sideeffect ".line 3", "~{dirflag},~{fpsr},~{flags}"() nounwind
  call void asm sideeffect "int $$3", "~{dirflag},~{fpsr},~{flags},~{memory}"() nounwind
  br label %return

return:                                           
  ret void
}
