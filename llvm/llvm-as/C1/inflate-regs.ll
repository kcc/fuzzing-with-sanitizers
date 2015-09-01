
target triple = "thumbv7-apple-ios"












define void @local_split(float* nocapture %p) nounwind ssp {
entry:
  %x = load float, float* %p, align 4
  %a = fadd float %x, 1.0
  tail call void asm sideeffect "", "~{d0},~{d1},~{d2},~{d3},~{d4},~{d5},~{d6},~{d7},~{d8},~{d9},~{d10},~{d11},~{d12},~{d13},~{d14},~{d15}"() nounwind
  store float %a, float* %p, align 4
  ret void
}











define void @global_split(float* nocapture %p1, float* nocapture %p2) nounwind ssp {
entry:
  %0 = load float, float* %p1, align 4
  %add = fadd float %0, 1.000000e+00
  tail call void asm sideeffect "", "~{d0},~{d1},~{d2},~{d3},~{d4},~{d5},~{d6},~{d7},~{d8},~{d9},~{d10},~{d11},~{d12},~{d13},~{d14},~{d15}"() nounwind
  %cmp = fcmp ogt float %add, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:
  store float %add, float* %p2, align 4
  br label %if.end

if.end:
  store float %add, float* %p1, align 4
  ret void
}
