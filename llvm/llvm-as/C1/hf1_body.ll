

@x = external global float


define void @v_sf(float %p) #0 {
entry:
  %p.addr = alloca float, align 4
  store float %p, float* %p.addr, align 4
  %0 = load float, float* %p.addr, align 4
  store float %0, float* @x, align 4
  ret void
}








