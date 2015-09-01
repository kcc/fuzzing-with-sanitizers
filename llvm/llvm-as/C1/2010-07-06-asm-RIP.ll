


@n = global i32 0                                 

define void @f(i32*) nounwind ssp {
  ret void
}

define void @g() nounwind ssp {
entry:



  call void asm sideeffect "push\09$1$1\0A\09call\09${1:a}\0A\09pop\09%edx", "imr,i,~{dirflag},~{fpsr},~{flags},~{memory},~{cc},~{edi},~{esi},~{edx},~{ecx},~{ebx},~{eax}"(i32* @n, void (i32*)* @f) nounwind
  br label %return

return:                                           
  ret void
}

