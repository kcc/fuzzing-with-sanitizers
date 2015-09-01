
target triple = "thumbv7-apple-ios"



















define void @f1(float %x, <2 x float>* %p) {
  %v1 = insertelement <2 x float> undef, float %x, i32 0
  %v2 = insertelement <2 x float> %v1, float 0x400921FB60000000, i32 1
  %y = call double asm sideeffect "asm clobber $0", "=w,0,~{d1},~{d2},~{d3},~{d4},~{d5},~{d6},~{d7},~{d8},~{d9},~{d10},~{d11},~{d12},~{d13},~{d14},~{d15},~{d16},~{d17},~{d18},~{d19},~{d20},~{d21},~{d22},~{d23},~{d24},~{d25},~{d26},~{d27},~{d28},~{d29},~{d30},~{d31}"(<2 x float> %v2) nounwind
  store <2 x float> %v2, <2 x float>* %p, align 8
  ret void
}


















define void @f2(<2 x float>* %p) {
  %v2 = insertelement <2 x float> undef, float 0x400921FB60000000, i32 0
  %y = call double asm sideeffect "asm clobber $0", "=w,0,~{d1},~{d2},~{d3},~{d4},~{d5},~{d6},~{d7},~{d8},~{d9},~{d10},~{d11},~{d12},~{d13},~{d14},~{d15},~{d16},~{d17},~{d18},~{d19},~{d20},~{d21},~{d22},~{d23},~{d24},~{d25},~{d26},~{d27},~{d28},~{d29},~{d30},~{d31}"(<2 x float> %v2) nounwind
  store <2 x float> %v2, <2 x float>* %p, align 8
  ret void
}
