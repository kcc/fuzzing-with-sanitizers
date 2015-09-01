

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"






define <2 x i64> @stack_fold_aesdec(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64>, <2 x i64>) nounwind readnone

define <2 x i64> @stack_fold_aesdeclast(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64>, <2 x i64>) nounwind readnone

define <2 x i64> @stack_fold_aesenc(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>) nounwind readnone

define <2 x i64> @stack_fold_aesenclast(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64>, <2 x i64>) nounwind readnone

define <2 x i64> @stack_fold_aesimc(<2 x i64> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %a0)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) nounwind readnone

define <2 x i64> @stack_fold_aeskeygenassist(<2 x i64> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %a0, i8 7)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64>, i8) nounwind readnone


declare i32 @llvm.x86.sse42.crc32.32.8(i32, i8) nounwind


declare i32 @llvm.x86.sse42.crc32.32.16(i32, i16) nounwind

define i32 @stack_fold_crc32_32_32(i32 %a0, i32 %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  %2 = call i32 @llvm.x86.sse42.crc32.32.32(i32 %a0, i32 %a1)
  ret i32 %2
}
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) nounwind


declare i64 @llvm.x86.sse42.crc32.64.8(i64, i8) nounwind

define i64 @stack_fold_crc32_64_64(i64 %a0, i64 %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  %2 = call i64 @llvm.x86.sse42.crc32.64.64(i64 %a0, i64 %a1)
  ret i64 %2
}
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) nounwind

define <4 x i32> @stack_fold_movd_load(i32 %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  %2 = insertelement <4 x i32> zeroinitializer, i32 %a0, i32 0
  
  %3 = add <4 x i32> %2, <i32 1, i32 1, i32 1, i32 1>
  ret <4 x i32> %3
}

define i32 @stack_fold_movd_store(<4 x i32> %a0) {
  
  
  
  %1 = add <4 x i32> %a0, <i32 1, i32 1, i32 1, i32 1>
  %2 = extractelement <4 x i32> %1, i32 0
  %3 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  ret i32 %2
}

define <2 x i64> @stack_fold_movq_load(<2 x i64> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <2 x i64> %a0, <2 x i64> zeroinitializer, <2 x i32> <i32 0, i32 2>
  
  %3 = add <2 x i64> %2, <i64 1, i64 1>
  ret <2 x i64> %3
}

define i64 @stack_fold_movq_store(<2 x i64> %a0) {
  
  
  
  %1 = add <2 x i64> %a0, <i64 1, i64 1>
  %2 = extractelement <2 x i64> %1, i32 0
  %3 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  ret i64 %2
}

define <8 x i16> @stack_fold_mpsadbw(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse41.mpsadbw(<16 x i8> %a0, <16 x i8> %a1, i8 7)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse41.mpsadbw(<16 x i8>, <16 x i8>, i8) nounwind readnone

define <16 x i8> @stack_fold_pabsb(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.ssse3.pabs.b.128(<16 x i8> %a0)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.ssse3.pabs.b.128(<16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_pabsd(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.ssse3.pabs.d.128(<4 x i32> %a0)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.ssse3.pabs.d.128(<4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_pabsw(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.pabs.w.128(<8 x i16> %a0)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.pabs.w.128(<8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_packssdw(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %a0, <4 x i32> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) nounwind readnone

define <16 x i8> @stack_fold_packsswb(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_packusdw(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %a0, <4 x i32> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) nounwind readnone

define <16 x i8> @stack_fold_packuswb(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_paddb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <16 x i8> %a0, %a1
  ret <16 x i8> %2
}

define <4 x i32> @stack_fold_paddd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <4 x i32> %a0, %a1
  ret <4 x i32> %2
}

define <2 x i64> @stack_fold_paddq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <2 x i64> %a0, %a1
  ret <2 x i64> %2
}

define <16 x i8> @stack_fold_paddsb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.padds.b(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.padds.b(<16 x i8>, <16 x i8>) nounwind readnone

define <8 x i16> @stack_fold_paddsw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.padds.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.padds.w(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_paddusb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.paddus.b(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.paddus.b(<16 x i8>, <16 x i8>) nounwind readnone

define <8 x i16> @stack_fold_paddusw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.paddus.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.paddus.w(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_paddw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <8 x i16> %a0, %a1
  ret <8 x i16> %2
}

define <16 x i8> @stack_fold_palignr(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a1, <16 x i8> %a0, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  ret <16 x i8> %2
}

define <16 x i8> @stack_fold_pand(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = and <16 x i8> %a0, %a1
  
  %3 = add <16 x i8> %2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <16 x i8> %3
}

define <16 x i8> @stack_fold_pandn(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = xor <16 x i8> %a0, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %3 = and <16 x i8> %2, %a1
  
  %4 = add <16 x i8> %3, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <16 x i8> %4
}

define <16 x i8> @stack_fold_pavgb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) nounwind readnone

define <8 x i16> @stack_fold_pavgw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.pavg.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.pavg.w(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_pblendvb(<16 x i8> %a0, <16 x i8> %a1, <16 x i8> %c) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse41.pblendvb(<16 x i8> %a1, <16 x i8> %c, <16 x i8> %a0)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse41.pblendvb(<16 x i8>, <16 x i8>, <16 x i8>) nounwind readnone

define <8 x i16> @stack_fold_pblendw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16> %a0, <8 x i16> %a1, i8 7)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16>, <8 x i16>, i8) nounwind readnone

define <2 x i64> @stack_fold_pclmulqdq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %a0, <2 x i64> %a1, i8 0)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8) nounwind readnone

define <16 x i8> @stack_fold_pcmpeqb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <16 x i8> %a0, %a1
  %3 = sext <16 x i1> %2 to <16 x i8>
  ret <16 x i8> %3
}

define <4 x i32> @stack_fold_pcmpeqd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <4 x i32> %a0, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <2 x i64> @stack_fold_pcmpeqq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <2 x i64> %a0, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <8 x i16> @stack_fold_pcmpeqw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <8 x i16> %a0, %a1
  %3 = sext <8 x i1> %2 to <8 x i16>
  ret <8 x i16> %3
}

define i32 @stack_fold_pcmpestri(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{rax},~{flags}"()
  %2 = call i32 @llvm.x86.sse42.pcmpestri128(<16 x i8> %a0, i32 7, <16 x i8> %a1, i32 7, i8 7)
  ret i32 %2
}
declare i32 @llvm.x86.sse42.pcmpestri128(<16 x i8>, i32, <16 x i8>, i32, i8) nounwind readnone

define <16 x i8> @stack_fold_pcmpestrm(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{rax},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse42.pcmpestrm128(<16 x i8> %a0, i32 7, <16 x i8> %a1, i32 7, i8 7)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse42.pcmpestrm128(<16 x i8>, i32, <16 x i8>, i32, i8) nounwind readnone

define <16 x i8> @stack_fold_pcmpgtb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <16 x i8> %a0, %a1
  %3 = sext <16 x i1> %2 to <16 x i8>
  ret <16 x i8> %3
}

define <4 x i32> @stack_fold_pcmpgtd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <4 x i32> %a0, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <2 x i64> @stack_fold_pcmpgtq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <2 x i64> %a0, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <8 x i16> @stack_fold_pcmpgtw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <8 x i16> %a0, %a1
  %3 = sext <8 x i1> %2 to <8 x i16>
  ret <8 x i16> %3
}

define i32 @stack_fold_pcmpistri(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call i32 @llvm.x86.sse42.pcmpistri128(<16 x i8> %a0, <16 x i8> %a1, i8 7)
  ret i32 %2
}
declare i32 @llvm.x86.sse42.pcmpistri128(<16 x i8>, <16 x i8>, i8) nounwind readnone

define <16 x i8> @stack_fold_pcmpistrm(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse42.pcmpistrm128(<16 x i8> %a0, <16 x i8> %a1, i8 7)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse42.pcmpistrm128(<16 x i8>, <16 x i8>, i8) nounwind readnone



define i32 @stack_fold_pextrd(<4 x i32> %a0) {
  
  
  
  %1 = extractelement <4 x i32> %a0, i32 1
  %2 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  ret i32 %1
}

define i64 @stack_fold_pextrq(<2 x i64> %a0) {
  
  
  
  %1 = extractelement <2 x i64> %a0, i32 1
  %2 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  ret i64 %1
}



define <4 x i32> @stack_fold_phaddd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_phaddsw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.phadd.sw.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.phadd.sw.128(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_phaddw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.phadd.w.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.phadd.w.128(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_phminposuw(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse41.phminposuw(<8 x i16> %a0)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse41.phminposuw(<8 x i16>) nounwind readnone

define <4 x i32> @stack_fold_phsubd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.ssse3.phsub.d.128(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.ssse3.phsub.d.128(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_phsubsw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.phsub.sw.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.phsub.sw.128(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_phsubw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.phsub.w.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.phsub.w.128(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_pinsrb(<16 x i8> %a0, i8 %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  %2 = insertelement <16 x i8> %a0, i8 %a1, i32 1
  ret <16 x i8> %2
}

define <4 x i32> @stack_fold_pinsrd(<4 x i32> %a0, i32 %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  %2 = insertelement <4 x i32> %a0, i32 %a1, i32 1
  ret <4 x i32> %2
}

define <2 x i64> @stack_fold_pinsrq(<2 x i64> %a0, i64 %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  %2 = insertelement <2 x i64> %a0, i64 %a1, i32 1
  ret <2 x i64> %2
}

define <8 x i16> @stack_fold_pinsrw(<8 x i16> %a0, i16 %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"()
  %2 = insertelement <8 x i16> %a0, i16 %a1, i32 1
  ret <8 x i16> %2
}

define <8 x i16> @stack_fold_pmaddubsw(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %a0, <16 x i8> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_pmaddwd(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %a0, <8 x i16> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_pmaxsb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse41.pmaxsb(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse41.pmaxsb(<16 x i8>, <16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_pmaxsd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse41.pmaxsd(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse41.pmaxsd(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_pmaxsw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.pmaxs.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.pmaxs.w(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_pmaxub(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.pmaxu.b(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.pmaxu.b(<16 x i8>, <16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_pmaxud(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse41.pmaxud(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse41.pmaxud(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_pmaxuw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse41.pmaxuw(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse41.pmaxuw(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_pminsb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse41.pminsb(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse41.pminsb(<16 x i8>, <16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_pminsd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse41.pminsd(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse41.pminsd(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_pminsw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.pmins.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.pmins.w(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_pminub(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.pminu.b(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.pminu.b(<16 x i8>, <16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_pminud(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse41.pminud(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse41.pminud(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_pminuw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse41.pminuw(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse41.pminuw(<8 x i16>, <8 x i16>) nounwind readnone

define <4 x i32> @stack_fold_pmovsxbd(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8> %a0)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8>) nounwind readnone

define <2 x i64> @stack_fold_pmovsxbq(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse41.pmovsxbq(<16 x i8> %a0)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse41.pmovsxbq(<16 x i8>) nounwind readnone

define <8 x i16> @stack_fold_pmovsxbw(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse41.pmovsxbw(<16 x i8> %a0)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse41.pmovsxbw(<16 x i8>) nounwind readnone

define <2 x i64> @stack_fold_pmovsxdq(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse41.pmovsxdq(<4 x i32> %a0)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse41.pmovsxdq(<4 x i32>) nounwind readnone

define <4 x i32> @stack_fold_pmovsxwd(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16> %a0)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16>) nounwind readnone

define <2 x i64> @stack_fold_pmovsxwq(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse41.pmovsxwq(<8 x i16> %a0)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse41.pmovsxwq(<8 x i16>) nounwind readnone

define <4 x i32> @stack_fold_pmovzxbd(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 1, i32 19, i32 20, i32 21, i32 2, i32 22, i32 23, i32 24, i32 3, i32 25, i32 26, i32 27>
  %3 = bitcast <16 x i8> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <2 x i64> @stack_fold_pmovzxbq(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 1, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %3 = bitcast <16 x i8> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <8 x i16> @stack_fold_pmovzxbw(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %3 = bitcast <16 x i8> %2 to <8 x i16>
  ret <8 x i16> %3
}

define <2 x i64> @stack_fold_pmovzxdq(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %3 = bitcast <4 x i32> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <4 x i32> @stack_fold_pmovzxwd(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %3 = bitcast <8 x i16> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <2 x i64> @stack_fold_pmovzxwq(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 1, i32 11, i32 12, i32 13>
  %3 = bitcast <8 x i16> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <2 x i64> @stack_fold_pmuldq(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse41.pmuldq(<4 x i32> %a0, <4 x i32> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse41.pmuldq(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_pmulhrsw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.pmul.hr.sw.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.pmul.hr.sw.128(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_pmulhuw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_pmulhw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) nounwind readnone

define <4 x i32> @stack_fold_pmulld(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = mul <4 x i32> %a0, %a1
  ret <4 x i32> %2
}

define <8 x i16> @stack_fold_pmullw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = mul <8 x i16> %a0, %a1
  ret <8 x i16> %2
}

define <2 x i64> @stack_fold_pmuludq(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse2.pmulu.dq(<4 x i32> %a0, <4 x i32> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse2.pmulu.dq(<4 x i32>, <4 x i32>) nounwind readnone

define <16 x i8> @stack_fold_por(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = or <16 x i8> %a0, %a1
  
  %3 = add <16 x i8> %2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <16 x i8> %3
}

define <2 x i64> @stack_fold_psadbw(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %a0, <16 x i8> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) nounwind readnone

define <16 x i8> @stack_fold_pshufb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_pshufd(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  ret <4 x i32> %2
}

define <8 x i16> @stack_fold_pshufhw(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 7, i32 6, i32 4, i32 4>
  ret <8 x i16> %2
}

define <8 x i16> @stack_fold_pshuflw(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> undef, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %2
}

define <16 x i8> @stack_fold_psignb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8>, <16 x i8>) nounwind readnone

define <4 x i32> @stack_fold_psignd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.ssse3.psign.d.128(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.ssse3.psign.d.128(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_psignw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16>, <8 x i16>) nounwind readnone

define <4 x i32> @stack_fold_pslld(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse2.psll.d(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse2.psll.d(<4 x i32>, <4 x i32>) nounwind readnone

define <2 x i64> @stack_fold_psllq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64>, <2 x i64>) nounwind readnone

define <8 x i16> @stack_fold_psllw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16>, <8 x i16>) nounwind readnone

define <4 x i32> @stack_fold_psrad(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i16> @stack_fold_psraw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.psra.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.psra.w(<8 x i16>, <8 x i16>) nounwind readnone

define <4 x i32> @stack_fold_psrld(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) nounwind readnone

define <2 x i64> @stack_fold_psrlq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) nounwind readnone

define <8 x i16> @stack_fold_psrlw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.psrl.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.psrl.w(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_psubb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <16 x i8> %a0, %a1
  ret <16 x i8> %2
}

define <4 x i32> @stack_fold_psubd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <4 x i32> %a0, %a1
  ret <4 x i32> %2
}

define <2 x i64> @stack_fold_psubq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <2 x i64> %a0, %a1
  ret <2 x i64> %2
}

define <16 x i8> @stack_fold_psubsb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.psubs.b(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.psubs.b(<16 x i8>, <16 x i8>) nounwind readnone

define <8 x i16> @stack_fold_psubsw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.psubs.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.psubs.w(<8 x i16>, <8 x i16>) nounwind readnone

define <16 x i8> @stack_fold_psubusb(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i8> @llvm.x86.sse2.psubus.b(<16 x i8> %a0, <16 x i8> %a1)
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.sse2.psubus.b(<16 x i8>, <16 x i8>) nounwind readnone

define <8 x i16> @stack_fold_psubusw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i16> @llvm.x86.sse2.psubus.w(<8 x i16> %a0, <8 x i16> %a1)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.sse2.psubus.w(<8 x i16>, <8 x i16>) nounwind readnone

define <8 x i16> @stack_fold_psubw(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <8 x i16> %a0, %a1
  ret <8 x i16> %2
}

define i32 @stack_fold_ptest(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call i32 @llvm.x86.sse41.ptestc(<2 x i64> %a0, <2 x i64> %a1)
  ret i32 %2
}
declare i32 @llvm.x86.sse41.ptestc(<2 x i64>, <2 x i64>) nounwind readnone

define <16 x i8> @stack_fold_punpckhbw(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a0, <16 x i8> %a1, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  ret <16 x i8> %2
}

define <4 x i32> @stack_fold_punpckhdq(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> %a1, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  
  %3 = add <4 x i32> %2, <i32 1, i32 1, i32 1, i32 1>
  ret <4 x i32> %3
}

define <2 x i64> @stack_fold_punpckhqdq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <2 x i64> %a0, <2 x i64> %a1, <2 x i32> <i32 1, i32 3>
  
  %3 = add <2 x i64> %2, <i64 1, i64 1>
  ret <2 x i64> %3
}

define <8 x i16> @stack_fold_punpckhwd(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  ret <8 x i16> %2
}

define <16 x i8> @stack_fold_punpcklbw(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a0, <16 x i8> %a1, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  ret <16 x i8> %2
}

define <4 x i32> @stack_fold_punpckldq(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> %a1, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  
  %3 = add <4 x i32> %2, <i32 1, i32 1, i32 1, i32 1>
  ret <4 x i32> %3
}

define <2 x i64> @stack_fold_punpcklqdq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <2 x i64> %a0, <2 x i64> %a1, <2 x i32> <i32 0, i32 2>
  
  %3 = add <2 x i64> %2, <i64 1, i64 1>
  ret <2 x i64> %3
}

define <8 x i16> @stack_fold_punpcklwd(<8 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  ret <8 x i16> %2
}

define <16 x i8> @stack_fold_pxor(<16 x i8> %a0, <16 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = xor <16 x i8> %a0, %a1
  
  %3 = add <16 x i8> %2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <16 x i8> %3
}
