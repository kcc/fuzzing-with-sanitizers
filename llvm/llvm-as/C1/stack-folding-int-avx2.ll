

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"






define <4 x double> @stack_fold_broadcastsd_ymm(<2 x double> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <2 x double> %a0, <2 x double> undef, <4 x i32> zeroinitializer
  
  %3 = fadd <4 x double> %2, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %3
}
declare <4 x double> @llvm.x86.avx2.vbroadcast.sd.pd.256(<2 x double>) nounwind readonly

define <4 x float> @stack_fold_broadcastss(<4 x float> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x float> %a0, <4 x float> undef, <4 x i32> zeroinitializer
  
  %3 = fadd <4 x float> %2, <float 0x0, float 0x0, float 0x0, float 0x0>
  ret <4 x float> %3
}
declare <4 x float> @llvm.x86.avx2.vbroadcast.ss.ps(<4 x float>) nounwind readonly

define <8 x float> @stack_fold_broadcastss_ymm(<4 x float> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x float> %a0, <4 x float> undef, <8 x i32> zeroinitializer
  
  %3 = fadd <8 x float> %2, <float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0>
  ret <8 x float> %3
}
declare <8 x float> @llvm.x86.avx2.vbroadcast.ss.ps.256(<4 x float>) nounwind readonly

define <4 x i32> @stack_fold_extracti128(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  
  %1 = add <8 x i32> %a0, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %2 = shufflevector <8 x i32> %1, <8 x i32> %a1, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %3 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  ret <4 x i32> %2
}

define <8 x i32> @stack_fold_inserti128(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> %a1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  
  %3 = add <8 x i32> %2, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %3
}

define <16 x i16> @stack_fold_mpsadbw(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.mpsadbw(<32 x i8> %a0, <32 x i8> %a1, i8 7)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.mpsadbw(<32 x i8>, <32 x i8>, i8) nounwind readnone

define <32 x i8> @stack_fold_pabsb(<32 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pabs.b(<32 x i8> %a0)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pabs.b(<32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_pabsd(<8 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pabs.d(<8 x i32> %a0)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pabs.d(<8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_pabsw(<16 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pabs.w(<16 x i16> %a0)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pabs.w(<16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_packssdw(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %a0, <8 x i32> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) nounwind readnone

define <32 x i8> @stack_fold_packsswb(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %a0, <16 x i16> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_packusdw(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %a0, <8 x i32> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) nounwind readnone

define <32 x i8> @stack_fold_packuswb(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %a0, <16 x i16> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16>, <16 x i16>) nounwind readnone

define <32 x i8> @stack_fold_paddb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <32 x i8> %a0, %a1
  ret <32 x i8> %2
}

define <8 x i32> @stack_fold_paddd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <8 x i32> %a0, %a1
  ret <8 x i32> %2
}

define <4 x i64> @stack_fold_paddq(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <4 x i64> %a0, %a1
  ret <4 x i64> %2
}

define <32 x i8> @stack_fold_paddsb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.padds.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.padds.b(<32 x i8>, <32 x i8>) nounwind readnone

define <16 x i16> @stack_fold_paddsw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.padds.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.padds.w(<16 x i16>, <16 x i16>) nounwind readnone

define <32 x i8> @stack_fold_paddusb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.paddus.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.paddus.b(<32 x i8>, <32 x i8>) nounwind readnone

define <16 x i16> @stack_fold_paddusw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.paddus.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.paddus.w(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_paddw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = add <16 x i16> %a0, %a1
  ret <16 x i16> %2
}

define <32 x i8> @stack_fold_palignr(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <32 x i8> %a1, <32 x i8> %a0, <32 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48>
  ret <32 x i8> %2
}

define <32 x i8> @stack_fold_pand(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = and <32 x i8> %a0, %a1
  
  %3 = add <32 x i8> %2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <32 x i8> %3
}

define <32 x i8> @stack_fold_pandn(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = xor <32 x i8> %a0, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %3 = and <32 x i8> %2, %a1
  
  %4 = add <32 x i8> %3, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <32 x i8> %4
}

define <32 x i8> @stack_fold_pavgb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8>, <32 x i8>) nounwind readnone

define <16 x i16> @stack_fold_pavgw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pavg.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pavg.w(<16 x i16>, <16 x i16>) nounwind readnone

define <4 x i32> @stack_fold_pblendd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> %a1, <4 x i32> <i32 4, i32 5, i32 6, i32 3>
  ret <4 x i32> %2
}

define <8 x i32> @stack_fold_pblendd_ymm(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i32> %a0, <8 x i32> %a1, <8 x i32> <i32 8, i32 9, i32 10, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i32> %2
}

define <32 x i8> @stack_fold_pblendvb(<32 x i8> %a0, <32 x i8> %a1, <32 x i8> %c) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %a1, <32 x i8> %c, <32 x i8> %a0)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) nounwind readnone

define <16 x i16> @stack_fold_pblendw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pblendw(<16 x i16> %a0, <16 x i16> %a1, i8 7)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pblendw(<16 x i16>, <16 x i16>, i8) nounwind readnone

define <16 x i8> @stack_fold_pbroadcastb(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a0, <16 x i8> undef, <16 x i32> zeroinitializer
  ret <16 x i8> %2
}

define <32 x i8> @stack_fold_pbroadcastb_ymm(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i8> %a0, <16 x i8> undef, <32 x i32> zeroinitializer
  ret <32 x i8> %2
}

define <4 x i32> @stack_fold_pbroadcastd(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> undef, <4 x i32> zeroinitializer
  
  %3 = add <4 x i32> %2, <i32 1, i32 1, i32 1, i32 1>
  ret <4 x i32> %3
}

define <8 x i32> @stack_fold_pbroadcastd_ymm(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i32> %a0, <4 x i32> undef, <8 x i32> zeroinitializer
  
  %3 = add <8 x i32> %2, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %3
}

define <2 x i64> @stack_fold_pbroadcastq(<2 x i64> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <2 x i64> %a0, <2 x i64> undef, <2 x i32> zeroinitializer
  
  %3 = add <2 x i64> %2, <i64 1, i64 1>
  ret <2 x i64> %3
}

define <4 x i64> @stack_fold_pbroadcastq_ymm(<2 x i64> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <2 x i64> %a0, <2 x i64> undef, <4 x i32> zeroinitializer
  
  %3 = add <4 x i64> %2, <i64 1, i64 1, i64 1, i64 1>
  ret <4 x i64> %3
}

define <8 x i16> @stack_fold_pbroadcastw(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> undef, <8 x i32> zeroinitializer
  ret <8 x i16> %2
}

define <16 x i16> @stack_fold_pbroadcastw_ymm(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i16> %a0, <8 x i16> undef, <16 x i32> zeroinitializer
  ret <16 x i16> %2
}

define <32 x i8> @stack_fold_pcmpeqb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <32 x i8> %a0, %a1
  %3 = sext <32 x i1> %2 to <32 x i8>
  ret <32 x i8> %3
}

define <8 x i32> @stack_fold_pcmpeqd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <8 x i32> %a0, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}

define <4 x i64> @stack_fold_pcmpeqq(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <4 x i64> %a0, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}

define <16 x i16> @stack_fold_pcmpeqw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp eq <16 x i16> %a0, %a1
  %3 = sext <16 x i1> %2 to <16 x i16>
  ret <16 x i16> %3
}

define <32 x i8> @stack_fold_pcmpgtb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <32 x i8> %a0, %a1
  %3 = sext <32 x i1> %2 to <32 x i8>
  ret <32 x i8> %3
}

define <8 x i32> @stack_fold_pcmpgtd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <8 x i32> %a0, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}

define <4 x i64> @stack_fold_pcmpgtq(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <4 x i64> %a0, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}

define <16 x i16> @stack_fold_pcmpgtw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = icmp sgt <16 x i16> %a0, %a1
  %3 = sext <16 x i1> %2 to <16 x i16>
  ret <16 x i16> %3
}

define <8 x i32> @stack_fold_perm2i128(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i32> %a0, <8 x i32> %a1, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  
  %3 = add <8 x i32> %2, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %3
}

define <8 x i32> @stack_fold_permd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %a1, <8 x i32> %a0)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>) nounwind readonly

define <4 x double> @stack_fold_permpd(<4 x double> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x double> %a0, <4 x double> undef, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  
  %3 = fadd <4 x double> %2, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %3
}

define <8 x float> @stack_fold_permps(<8 x float> %a0, <8 x float> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x float> @llvm.x86.avx2.permps(<8 x float> %a1, <8 x float> %a0)
  ret <8 x float> %2
}
declare <8 x float> @llvm.x86.avx2.permps(<8 x float>, <8 x float>) nounwind readonly

define <4 x i64> @stack_fold_permq(<4 x i64> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i64> %a0, <4 x i64> undef, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  
  %3 = add <4 x i64> %2, <i64 1, i64 1, i64 1, i64 1>
  ret <4 x i64> %3
}

define <8 x i32> @stack_fold_phaddd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_phaddsw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.phadd.sw(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.phadd.sw(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_phaddw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.phadd.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.phadd.w(<16 x i16>, <16 x i16>) nounwind readnone

define <8 x i32> @stack_fold_phsubd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.phsub.d(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.phsub.d(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_phsubsw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.phsub.sw(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.phsub.sw(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_phsubw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.phsub.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.phsub.w(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_pmaddubsw(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %a0, <32 x i8> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_pmaddwd(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %a0, <16 x i16> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) nounwind readnone

define <32 x i8> @stack_fold_pmaxsb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pmaxs.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pmaxs.b(<32 x i8>, <32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_pmaxsd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmaxs.d(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmaxs.d(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_pmaxsw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmaxs.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmaxs.w(<16 x i16>, <16 x i16>) nounwind readnone

define <32 x i8> @stack_fold_pmaxub(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pmaxu.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pmaxu.b(<32 x i8>, <32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_pmaxud(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmaxu.d(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmaxu.d(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_pmaxuw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmaxu.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmaxu.w(<16 x i16>, <16 x i16>) nounwind readnone

define <32 x i8> @stack_fold_pminsb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pmins.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pmins.b(<32 x i8>, <32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_pminsd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmins.d(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmins.d(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_pminsw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmins.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmins.w(<16 x i16>, <16 x i16>) nounwind readnone

define <32 x i8> @stack_fold_pminub(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pminu.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pminu.b(<32 x i8>, <32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_pminud(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pminu.d(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pminu.d(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_pminuw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pminu.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pminu.w(<16 x i16>, <16 x i16>) nounwind readnone

define <8 x i32> @stack_fold_pmovsxbd(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmovsxbd(<16 x i8> %a0)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmovsxbd(<16 x i8>) nounwind readnone

define <4 x i64> @stack_fold_pmovsxbq(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmovsxbq(<16 x i8> %a0)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmovsxbq(<16 x i8>) nounwind readnone

define <16 x i16> @stack_fold_pmovsxbw(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmovsxbw(<16 x i8> %a0)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmovsxbw(<16 x i8>) nounwind readnone

define <4 x i64> @stack_fold_pmovsxdq(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmovsxdq(<4 x i32> %a0)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmovsxdq(<4 x i32>) nounwind readnone

define <8 x i32> @stack_fold_pmovsxwd(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmovsxwd(<8 x i16> %a0)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmovsxwd(<8 x i16>) nounwind readnone

define <4 x i64> @stack_fold_pmovsxwq(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmovsxwq(<8 x i16> %a0)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmovsxwq(<8 x i16>) nounwind readnone

define <8 x i32> @stack_fold_pmovzxbd(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmovzxbd(<16 x i8> %a0)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmovzxbd(<16 x i8>) nounwind readnone

define <4 x i64> @stack_fold_pmovzxbq(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmovzxbq(<16 x i8> %a0)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmovzxbq(<16 x i8>) nounwind readnone

define <16 x i16> @stack_fold_pmovzxbw(<16 x i8> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmovzxbw(<16 x i8> %a0)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmovzxbw(<16 x i8>) nounwind readnone

define <4 x i64> @stack_fold_pmovzxdq(<4 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmovzxdq(<4 x i32> %a0)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmovzxdq(<4 x i32>) nounwind readnone

define <8 x i32> @stack_fold_pmovzxwd(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.pmovzxwd(<8 x i16> %a0)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.pmovzxwd(<8 x i16>) nounwind readnone

define <4 x i64> @stack_fold_pmovzxwq(<8 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmovzxwq(<8 x i16> %a0)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmovzxwq(<8 x i16>) nounwind readnone

define <4 x i64> @stack_fold_pmuldq(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmul.dq(<8 x i32> %a0, <8 x i32> %a1)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmul.dq(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_pmulhrsw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmul.hr.sw(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmul.hr.sw(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_pmulhuw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_pmulhw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.pmulh.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.pmulh.w(<16 x i16>, <16 x i16>) nounwind readnone

define <8 x i32> @stack_fold_pmulld(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = mul <8 x i32> %a0, %a1
  ret <8 x i32> %2
}

define <16 x i16> @stack_fold_pmullw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = mul <16 x i16> %a0, %a1
  ret <16 x i16> %2
}

define <4 x i64> @stack_fold_pmuludq(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.pmulu.dq(<8 x i32> %a0, <8 x i32> %a1)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.pmulu.dq(<8 x i32>, <8 x i32>) nounwind readnone

define <32 x i8> @stack_fold_por(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = or <32 x i8> %a0, %a1
  
  %3 = add <32 x i8> %2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <32 x i8> %3
}

define <4 x i64> @stack_fold_psadbw(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %a0, <32 x i8> %a1)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) nounwind readnone

define <32 x i8> @stack_fold_pshufb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_pshufd(<8 x i32> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i32> %a0, <8 x i32> undef, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  ret <8 x i32> %2
}

define <16 x i16> @stack_fold_vpshufhw(<16 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i16> %a0, <16 x i16> undef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 7, i32 6, i32 5, i32 4, i32 8, i32 9, i32 10, i32 11, i32 15, i32 14, i32 13, i32 12>
  ret <16 x i16> %2
}

define <16 x i16> @stack_fold_vpshuflw(<16 x i16> %a0) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i16> %a0, <16 x i16> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 4, i32 5, i32 6, i32 7, i32 11, i32 10, i32 9, i32 8, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i16> %2
}

define <32 x i8> @stack_fold_psignb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8>, <32 x i8>) nounwind readnone

define <8 x i32> @stack_fold_psignd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.psign.d(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.psign.d(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_psignw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.psign.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.psign.w(<16 x i16>, <16 x i16>) nounwind readnone

define <8 x i32> @stack_fold_pslld(<8 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.psll.d(<8 x i32> %a0, <4 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.psll.d(<8 x i32>, <4 x i32>) nounwind readnone

define <4 x i64> @stack_fold_psllq(<4 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.psll.q(<4 x i64> %a0, <2 x i64> %a1)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.psll.q(<4 x i64>, <2 x i64>) nounwind readnone

define <4 x i32> @stack_fold_psllvd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i32> @stack_fold_psllvd_ymm(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32>, <8 x i32>) nounwind readnone

define <2 x i64> @stack_fold_psllvq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.avx2.psllv.q(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.avx2.psllv.q(<2 x i64>, <2 x i64>) nounwind readnone

define <4 x i64> @stack_fold_psllvq_ymm(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %a0, <4 x i64> %a1)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64>, <4 x i64>) nounwind readnone

define <16 x i16> @stack_fold_psllw(<16 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.psll.w(<16 x i16> %a0, <8 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.psll.w(<16 x i16>, <8 x i16>) nounwind readnone

define <8 x i32> @stack_fold_psrad(<8 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.psra.d(<8 x i32> %a0, <4 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.psra.d(<8 x i32>, <4 x i32>) nounwind readnone

define <4 x i32> @stack_fold_psravd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.avx2.psrav.d(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.avx2.psrav.d(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i32> @stack_fold_psravd_ymm(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.psrav.d.256(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.psrav.d.256(<8 x i32>, <8 x i32>) nounwind readnone

define <16 x i16> @stack_fold_psraw(<16 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.psra.w(<16 x i16> %a0, <8 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.psra.w(<16 x i16>, <8 x i16>) nounwind readnone

define <8 x i32> @stack_fold_psrld(<8 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %a0, <4 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32>, <4 x i32>) nounwind readnone

define <4 x i64> @stack_fold_psrlq(<4 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.psrl.q(<4 x i64> %a0, <2 x i64> %a1)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.psrl.q(<4 x i64>, <2 x i64>) nounwind readnone

define <4 x i32> @stack_fold_psrlvd(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i32> @llvm.x86.avx2.psrlv.d(<4 x i32> %a0, <4 x i32> %a1)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.avx2.psrlv.d(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i32> @stack_fold_psrlvd_ymm(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <8 x i32> @llvm.x86.avx2.psrlv.d.256(<8 x i32> %a0, <8 x i32> %a1)
  ret <8 x i32> %2
}
declare <8 x i32> @llvm.x86.avx2.psrlv.d.256(<8 x i32>, <8 x i32>) nounwind readnone

define <2 x i64> @stack_fold_psrlvq(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <2 x i64> @llvm.x86.avx2.psrlv.q(<2 x i64> %a0, <2 x i64> %a1)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.avx2.psrlv.q(<2 x i64>, <2 x i64>) nounwind readnone

define <4 x i64> @stack_fold_psrlvq_ymm(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <4 x i64> @llvm.x86.avx2.psrlv.q.256(<4 x i64> %a0, <4 x i64> %a1)
  ret <4 x i64> %2
}
declare <4 x i64> @llvm.x86.avx2.psrlv.q.256(<4 x i64>, <4 x i64>) nounwind readnone

define <16 x i16> @stack_fold_psrlw(<16 x i16> %a0, <8 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.psrl.w(<16 x i16> %a0, <8 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.psrl.w(<16 x i16>, <8 x i16>) nounwind readnone

define <32 x i8> @stack_fold_psubb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <32 x i8> %a0, %a1
  ret <32 x i8> %2
}

define <8 x i32> @stack_fold_psubd(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <8 x i32> %a0, %a1
  ret <8 x i32> %2
}

define <4 x i64> @stack_fold_psubq(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <4 x i64> %a0, %a1
  ret <4 x i64> %2
}

define <32 x i8> @stack_fold_psubsb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.psubs.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.psubs.b(<32 x i8>, <32 x i8>) nounwind readnone

define <16 x i16> @stack_fold_psubsw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.psubs.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.psubs.w(<16 x i16>, <16 x i16>) nounwind readnone

define <32 x i8> @stack_fold_psubusb(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <32 x i8> @llvm.x86.avx2.psubus.b(<32 x i8> %a0, <32 x i8> %a1)
  ret <32 x i8> %2
}
declare <32 x i8> @llvm.x86.avx2.psubus.b(<32 x i8>, <32 x i8>) nounwind readnone

define <16 x i16> @stack_fold_psubusw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = call <16 x i16> @llvm.x86.avx2.psubus.w(<16 x i16> %a0, <16 x i16> %a1)
  ret <16 x i16> %2
}
declare <16 x i16> @llvm.x86.avx2.psubus.w(<16 x i16>, <16 x i16>) nounwind readnone

define <16 x i16> @stack_fold_psubw(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = sub <16 x i16> %a0, %a1
  ret <16 x i16> %2
}

define <32 x i8> @stack_fold_punpckhbw(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <32 x i8> %a0, <32 x i8> %a1, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  ret <32 x i8> %2
}

define <8 x i32> @stack_fold_punpckhdq(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i32> %a0, <8 x i32> %a1, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  
  %3 = add <8 x i32> %2, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %3
}

define <4 x i64> @stack_fold_punpckhqdq(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i64> %a0, <4 x i64> %a1, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  
  %3 = add <4 x i64> %2, <i64 1, i64 1, i64 1, i64 1>
  ret <4 x i64> %3
}

define <16 x i16> @stack_fold_punpckhwd(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i16> %a0, <16 x i16> %a1, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  ret <16 x i16> %2
}

define <32 x i8> @stack_fold_punpcklbw(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <32 x i8> %a0, <32 x i8> %a1, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  ret <32 x i8> %2
}

define <8 x i32> @stack_fold_punpckldq(<8 x i32> %a0, <8 x i32> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <8 x i32> %a0, <8 x i32> %a1, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  
  %3 = add <8 x i32> %2, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %3
}

define <4 x i64> @stack_fold_punpcklqdq(<4 x i64> %a0, <4 x i64> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <4 x i64> %a0, <4 x i64> %a1, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  
  %3 = add <4 x i64> %2, <i64 1, i64 1, i64 1, i64 1>
  ret <4 x i64> %3
}

define <16 x i16> @stack_fold_punpcklwd(<16 x i16> %a0, <16 x i16> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = shufflevector <16 x i16> %a0, <16 x i16> %a1, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  ret <16 x i16> %2
}

define <32 x i8> @stack_fold_pxor(<32 x i8> %a0, <32 x i8> %a1) {
  
  
  %1 = tail call <2 x i64> asm sideeffect "nop", "=x,~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{flags}"()
  %2 = xor <32 x i8> %a0, %a1
  
  %3 = add <32 x i8> %2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <32 x i8> %3
}
