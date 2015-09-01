

define x86_mmx @stack_fold_cvtpd2pi(<2 x double> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call x86_mmx @llvm.x86.sse.cvtpd2pi(<2 x double> %a0) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.sse.cvtpd2pi(<2 x double>) nounwind readnone

define <2 x double> @stack_fold_cvtpi2pd(x86_mmx %a0) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call <2 x double> @llvm.x86.sse.cvtpi2pd(x86_mmx %a0) nounwind readnone
  ret <2 x double> %2
}
declare <2 x double> @llvm.x86.sse.cvtpi2pd(x86_mmx) nounwind readnone

define <4 x float> @stack_fold_cvtpi2ps(<4 x float> %a0, x86_mmx %a1) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call <4 x float> @llvm.x86.sse.cvtpi2ps(<4 x float> %a0, x86_mmx %a1) nounwind readnone
  ret <4 x float> %2
}
declare <4 x float> @llvm.x86.sse.cvtpi2ps(<4 x float>, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_cvtps2pi(<4 x float> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call x86_mmx @llvm.x86.sse.cvtps2pi(<4 x float> %a0) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.sse.cvtps2pi(<4 x float>) nounwind readnone

define x86_mmx @stack_fold_cvttpd2pi(<2 x double> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call x86_mmx @llvm.x86.sse.cvttpd2pi(<2 x double> %a0) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.sse.cvttpd2pi(<2 x double>) nounwind readnone

define x86_mmx @stack_fold_cvttps2pi(<4 x float> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call x86_mmx @llvm.x86.sse.cvttps2pi(<4 x float> %a0) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.sse.cvttps2pi(<4 x float>) nounwind readnone






define x86_mmx @stack_fold_packssdw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.packssdw(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.packssdw(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_packsswb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.packsswb(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.packsswb(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_packuswb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.packuswb(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.packuswb(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.padd.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.padd.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.padd.d(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.padd.d(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.padd.q(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.padd.q(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddsb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.padds.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.padds.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddsw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.padds.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.padds.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddusb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.paddus.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.paddus.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddusw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.paddus.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.paddus.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_paddw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.padd.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.padd.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pand(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pand(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pand(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pandn(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pandn(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pandn(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pavgb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pavg.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pavg.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pavgw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pavg.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pavg.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pcmpeqb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pcmpeq.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pcmpeq.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pcmpeqd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pcmpeq.d(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pcmpeq.d(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pcmpeqw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pcmpeq.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pcmpeq.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pcmpgtb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pcmpgt.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pcmpgt.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pcmpgtd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pcmpgt.d(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pcmpgt.d(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pcmpgtw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pcmpgt.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pcmpgt.w(x86_mmx, x86_mmx) nounwind readnone



define x86_mmx @stack_fold_pmaddwd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmadd.wd(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmadd.wd(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pmaxsw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmaxs.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmaxs.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pmaxub(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmaxu.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmaxu.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pminsw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmins.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmins.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pminub(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pminu.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pminu.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pmulhuw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmulhu.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmulhu.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pmulhw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmulh.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmulh.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pmullw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmull.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmull.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pmuludq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pmulu.dq(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pmulu.dq(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_por(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.por(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.por(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psadbw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psad.bw(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psad.bw(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pshufw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.sse.pshuf.w(x86_mmx %a, i8 1) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.sse.pshuf.w(x86_mmx, i8) nounwind readnone

define x86_mmx @stack_fold_pslld(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psll.d(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psll.d(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psllq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psll.q(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psll.q(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psllw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psll.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psll.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psrad(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psra.d(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psra.d(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psraw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psra.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psra.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psrld(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psrl.d(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psrl.d(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psrlq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psrl.q(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psrl.q(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psrlw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psrl.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psrl.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psub.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psub.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psub.d(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psub.d(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psub.q(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psub.q(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubsb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psubs.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psubs.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubsw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psubs.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psubs.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubusb(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psubus.b(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psubus.b(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubusw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psubus.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psubus.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_psubw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.psub.w(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.psub.w(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_punpckhbw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.punpckhbw(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.punpckhbw(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_punpckhdq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.punpckhdq(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.punpckhdq(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_punpckhwd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.punpckhwd(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.punpckhwd(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_punpcklbw(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.punpcklbw(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.punpcklbw(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_punpckldq(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.punpckldq(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.punpckldq(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_punpcklwd(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.punpcklwd(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.punpcklwd(x86_mmx, x86_mmx) nounwind readnone

define x86_mmx @stack_fold_pxor(x86_mmx %a, x86_mmx %b) {
  
  
  %1 = tail call x86_mmx asm sideeffect "nop", "=y,~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7}"()
  %2 = call x86_mmx @llvm.x86.mmx.pxor(x86_mmx %a, x86_mmx %b) nounwind readnone
  ret x86_mmx %2
}
declare x86_mmx @llvm.x86.mmx.pxor(x86_mmx, x86_mmx) nounwind readnone
