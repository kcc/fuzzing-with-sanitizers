

define x86_mmx @stack_fold_pavgusb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pavgusb(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pavgusb(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pf2id(x86_mmx %a) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pf2id(x86_mmx %a) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pf2id(x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pf2iw(x86_mmx %a) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnowa.pf2iw(x86_mmx %a) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnowa.pf2iw(x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfacc(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfacc(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfacc(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfadd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfadd(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfadd(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfcmpeq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfcmpeq(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfcmpeq(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfcmpge(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfcmpge(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfcmpge(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfcmpgt(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfcmpgt(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfcmpgt(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfmax(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfmax(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfmax(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfmin(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfmin(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfmin(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfmul(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfmul(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfmul(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfnacc(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnowa.pfnacc(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnowa.pfnacc(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfpnacc(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnowa.pfpnacc(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnowa.pfpnacc(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfrcp(x86_mmx %a) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfrcp(x86_mmx %a) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfrcp(x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfrcpit1(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfrcpit1(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfrcpit1(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfrcpit2(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfrcpit2(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfrcpit2(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfrsqit1(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfrsqit1(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfrsqit1(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfrsqrt(x86_mmx %a) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfrsqrt(x86_mmx %a) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfrsqrt(x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfsub(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfsub(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfsub(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pfsubr(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pfsubr(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pfsubr(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pi2fd(x86_mmx %a) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pi2fd(x86_mmx %a) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pi2fd(x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pi2fw(x86_mmx %a) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnowa.pi2fw(x86_mmx %a) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnowa.pi2fw(x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pmulhrw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnow.pmulhrw(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnow.pmulhrw(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pswapd(x86_mmx %a) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.3dnowa.pswapd(x86_mmx %a) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.3dnowa.pswapd(x86_mmx) nounwind readnone
