



define i32 @atom0(i32* %addr, i32 %val) {

  %ret = atomicrmw add i32* %addr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom1(i64* %addr, i64 %val) {

  %ret = atomicrmw add i64* %addr, i64 %val seq_cst
  ret i64 %ret
}


define i32 @atom2(i32* %subr, i32 %val) {


  %ret = atomicrmw sub i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom3(i64* %subr, i64 %val) {


  %ret = atomicrmw sub i64* %subr, i64 %val seq_cst
  ret i64 %ret
}


define i32 @atom4(i32* %subr, i32 %val) {

  %ret = atomicrmw and i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom5(i64* %subr, i64 %val) {

  %ret = atomicrmw and i64* %subr, i64 %val seq_cst
  ret i64 %ret
}













define i32 @atom8(i32* %subr, i32 %val) {

  %ret = atomicrmw or i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom9(i64* %subr, i64 %val) {

  %ret = atomicrmw or i64* %subr, i64 %val seq_cst
  ret i64 %ret
}


define i32 @atom10(i32* %subr, i32 %val) {

  %ret = atomicrmw xor i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom11(i64* %subr, i64 %val) {

  %ret = atomicrmw xor i64* %subr, i64 %val seq_cst
  ret i64 %ret
}


define i32 @atom12(i32* %subr, i32 %val) {

  %ret = atomicrmw max i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom13(i64* %subr, i64 %val) {

  %ret = atomicrmw max i64* %subr, i64 %val seq_cst
  ret i64 %ret
}


define i32 @atom14(i32* %subr, i32 %val) {

  %ret = atomicrmw min i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom15(i64* %subr, i64 %val) {

  %ret = atomicrmw min i64* %subr, i64 %val seq_cst
  ret i64 %ret
}


define i32 @atom16(i32* %subr, i32 %val) {

  %ret = atomicrmw umax i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom17(i64* %subr, i64 %val) {

  %ret = atomicrmw umax i64* %subr, i64 %val seq_cst
  ret i64 %ret
}


define i32 @atom18(i32* %subr, i32 %val) {

  %ret = atomicrmw umin i32* %subr, i32 %val seq_cst
  ret i32 %ret
}


define i64 @atom19(i64* %subr, i64 %val) {

  %ret = atomicrmw umin i64* %subr, i64 %val seq_cst
  ret i64 %ret
}

declare float @llvm.nvvm.atomic.load.add.f32.p0f32(float* %addr, float %val)


define float @atomic_add_f32_generic(float* %addr, float %val) {

  %ret = call float @llvm.nvvm.atomic.load.add.f32.p0f32(float* %addr, float %val)
  ret float %ret
}

declare float @llvm.nvvm.atomic.load.add.f32.p1f32(float addrspace(1)* %addr, float %val)


define float @atomic_add_f32_addrspace1(float addrspace(1)* %addr, float %val) {

  %ret = call float @llvm.nvvm.atomic.load.add.f32.p1f32(float addrspace(1)* %addr, float %val)
  ret float %ret
}

declare float @llvm.nvvm.atomic.load.add.f32.p3f32(float addrspace(3)* %addr, float %val)


define float @atomic_add_f32_addrspace3(float addrspace(3)* %addr, float %val) {

  %ret = call float @llvm.nvvm.atomic.load.add.f32.p3f32(float addrspace(3)* %addr, float %val)
  ret float %ret
}


define i32 @atomic_cmpxchg_i32(i32* %addr, i32 %cmp, i32 %new) {

  %pairold = cmpxchg i32* %addr, i32 %cmp, i32 %new seq_cst seq_cst
  ret i32 %new
}


define i64 @atomic_cmpxchg_i64(i64* %addr, i64 %cmp, i64 %new) {

  %pairold = cmpxchg i64* %addr, i64 %cmp, i64 %new seq_cst seq_cst
  ret i64 %new
}
