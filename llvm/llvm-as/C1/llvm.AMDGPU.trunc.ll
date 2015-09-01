








define void @amdgpu_trunc(float addrspace(1)* %out, float %x) {
entry:
  %0 = call float @llvm.AMDGPU.trunc(float %x)
  store float %0, float addrspace(1)* %out
  ret void
}

declare float @llvm.AMDGPU.trunc(float ) readnone
