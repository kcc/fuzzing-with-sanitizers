


@i = internal global i32 0                        
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @foo to i8*)], section "llvm.metadata" 

define void @foo(i16 signext %source) nounwind ssp {
entry:
  %source_addr = alloca i16, align 2              
  store i16 %source, i16* %source_addr
  store i32 4, i32* @i, align 4
  call void asm sideeffect "# top of block", "~{dirflag},~{fpsr},~{flags},~{edi},~{esi},~{edx},~{ecx},~{eax}"() nounwind
  %asmtmp = call i16 asm sideeffect "movw $1, $0", "=={ax},*m,~{dirflag},~{fpsr},~{flags},~{memory}"(i16* %source_addr) nounwind 
  ret void
}
