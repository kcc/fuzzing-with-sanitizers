




define i32 @main() nounwind {
entry:
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  store float 0x402ECCCCC0000000, float* %a, align 4
  store float 0x4022333340000000, float* %b, align 4
  %0 = load float, float* %a, align 4
  %1 = load float, float* %b, align 4
  %add = fadd float %0, %1
  store float %add, float* %c, align 4
  ret i32 0
}
