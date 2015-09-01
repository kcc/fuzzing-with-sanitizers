












define void @add_f32(float addrspace(1)* %out, float %a, float %b) {
  %result = fadd float %a, %b
  store float %result, float addrspace(1)* %out
  ret void
}
