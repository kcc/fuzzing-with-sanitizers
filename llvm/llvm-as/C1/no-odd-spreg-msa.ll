


@v4f32 = global <4 x float> zeroinitializer

define void @msa_insert_0(float %a) {
entry:
  
  
  %b = call float asm sideeffect "mov.s $0, $1", "={$f13},{$f12}" (float %a)
  %0 = load volatile <4 x float>, <4 x float>* @v4f32

  
  
  
  
  
  
  
  
  
  call void asm sideeffect "# Clobber", "~{$f0},~{$f1},~{$f2},~{$f3},~{$f4},~{$f5},~{$f6},~{$f7},~{$f8},~{$f9},~{$f10},~{$f11},~{$f14},~{$f15},~{$f16},~{$f17},~{$f18},~{$f19},~{$f20},~{$f21},~{$f22},~{$f23},~{$f24},~{$f25},~{$f26},~{$f27},~{$f28},~{$f29},~{$f30},~{$f31}"()
  %1 = insertelement <4 x float> %0, float %b, i32 0
  store <4 x float> %1, <4 x float>* @v4f32
  ret void
}













define void @msa_insert_1(float %a) {
entry:
  
  
  %b = call float asm sideeffect "mov.s $0, $1", "={$f13},{$f12}" (float %a)
  %0 = load volatile <4 x float>, <4 x float>* @v4f32

  
  
  
  
  
  
  
  
  
  call void asm sideeffect "# Clobber", "~{$f0},~{$f1},~{$f2},~{$f3},~{$f4},~{$f5},~{$f6},~{$f7},~{$f8},~{$f9},~{$f10},~{$f11},~{$f14},~{$f15},~{$f16},~{$f17},~{$f18},~{$f19},~{$f20},~{$f21},~{$f22},~{$f23},~{$f24},~{$f25},~{$f26},~{$f27},~{$f28},~{$f29},~{$f30},~{$f31}"()
  %1 = insertelement <4 x float> %0, float %b, i32 1
  store <4 x float> %1, <4 x float>* @v4f32
  ret void
}













define float @msa_extract_0() {
entry:
  %0 = load volatile <4 x float>, <4 x float>* @v4f32
  %1 = call <4 x float> asm sideeffect "move.v $0, $1", "={$w13},{$w12}" (<4 x float> %0)

  
  
  
  
  
  
  
  call void asm sideeffect "# Clobber", "~{$f0},~{$f1},~{$f2},~{$f3},~{$f4},~{$f5},~{$f6},~{$f7},~{$f8},~{$f9},~{$f10},~{$f11},~{$f14},~{$f15},~{$f16},~{$f17},~{$f18},~{$f19},~{$f20},~{$f21},~{$f22},~{$f23},~{$f24},~{$f25},~{$f26},~{$f27},~{$f28},~{$f29},~{$f30},~{$f31}"()

  %2 = extractelement <4 x float> %1, i32 0
  ret float %2
}











define float @msa_extract_1() {
entry:
  %0 = load volatile <4 x float>, <4 x float>* @v4f32
  %1 = call <4 x float> asm sideeffect "move.v $0, $1", "={$w13},{$w12}" (<4 x float> %0)

  
  
  
  
  
  
  
  call void asm sideeffect "# Clobber", "~{$f0},~{$f1},~{$f2},~{$f3},~{$f4},~{$f5},~{$f6},~{$f7},~{$f8},~{$f9},~{$f10},~{$f11},~{$f12},~{$f14},~{$f15},~{$f16},~{$f17},~{$f18},~{$f19},~{$f20},~{$f21},~{$f22},~{$f23},~{$f24},~{$f25},~{$f26},~{$f27},~{$f28},~{$f29},~{$f30},~{$f31}"()

  %2 = extractelement <4 x float> %1, i32 1
  ret float %2
}













