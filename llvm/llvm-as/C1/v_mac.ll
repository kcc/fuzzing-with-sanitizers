








define void @mac_vvv(float addrspace(1)* %out, float addrspace(1)* %in) {
entry:
  %b_ptr = getelementptr float, float addrspace(1)* %in, i32 1
  %c_ptr = getelementptr float, float addrspace(1)* %in, i32 2

  %a = load float, float addrspace(1)* %in
  %b = load float, float addrspace(1)* %b_ptr
  %c = load float, float addrspace(1)* %c_ptr

  %tmp0 = fmul float %a, %b
  %tmp1 = fadd float %tmp0, %c
  store float %tmp1, float addrspace(1)* %out
  ret void
}




define void @mad_inline_sgpr_inline(float addrspace(1)* %out, float %in) {
entry:
  %tmp0 = fmul float 0.5, %in
  %tmp1 = fadd float %tmp0, 0.5
  store float %tmp1, float addrspace(1)* %out
  ret void
}




define void @mad_vvs(float addrspace(1)* %out, float addrspace(1)* %in, float %c) {
entry:
  %b_ptr = getelementptr float, float addrspace(1)* %in, i32 1

  %a = load float, float addrspace(1)* %in
  %b = load float, float addrspace(1)* %b_ptr

  %tmp0 = fmul float %a, %b
  %tmp1 = fadd float %tmp0, %c
  store float %tmp1, float addrspace(1)* %out
  ret void
}



define void @mac_ssv(float addrspace(1)* %out, float addrspace(1)* %in, float %a) {
entry:
  %c = load float, float addrspace(1)* %in

  %tmp0 = fmul float %a, %a
  %tmp1 = fadd float %tmp0, %c
  store float %tmp1, float addrspace(1)* %out
  ret void
}




define void @mac_mad_same_add(float addrspace(1)* %out, float addrspace(1)* %in) {
entry:
  %b_ptr = getelementptr float, float addrspace(1)* %in, i32 1
  %c_ptr = getelementptr float, float addrspace(1)* %in, i32 2
  %d_ptr = getelementptr float, float addrspace(1)* %in, i32 3
  %e_ptr = getelementptr float, float addrspace(1)* %in, i32 4

  %a = load float, float addrspace(1)* %in
  %b = load float, float addrspace(1)* %b_ptr
  %c = load float, float addrspace(1)* %c_ptr
  %d = load float, float addrspace(1)* %d_ptr
  %e = load float, float addrspace(1)* %e_ptr

  %tmp0 = fmul float %a, %b
  %tmp1 = fadd float %tmp0, %c

  %tmp2 = fmul float %d, %e
  %tmp3 = fadd float %tmp2, %c

  %out1 = getelementptr float, float addrspace(1)* %out, i32 1
  store float %tmp1, float addrspace(1)* %out
  store float %tmp3, float addrspace(1)* %out1
  ret void
}







define void @mad_neg_src0(float addrspace(1)* %out, float addrspace(1)* %in) #0 {
entry:
  %b_ptr = getelementptr float, float addrspace(1)* %in, i32 1
  %c_ptr = getelementptr float, float addrspace(1)* %in, i32 2

  %a = load float, float addrspace(1)* %in
  %b = load float, float addrspace(1)* %b_ptr
  %c = load float, float addrspace(1)* %c_ptr

  %neg_a = fsub float 0.0, %a
  %tmp0 = fmul float %neg_a, %b
  %tmp1 = fadd float %tmp0, %c

  store float %tmp1, float addrspace(1)* %out
  ret void
}




define void @mad_neg_src1(float addrspace(1)* %out, float addrspace(1)* %in) #0 {
entry:
  %b_ptr = getelementptr float, float addrspace(1)* %in, i32 1
  %c_ptr = getelementptr float, float addrspace(1)* %in, i32 2

  %a = load float, float addrspace(1)* %in
  %b = load float, float addrspace(1)* %b_ptr
  %c = load float, float addrspace(1)* %c_ptr

  %neg_b = fsub float 0.0, %b
  %tmp0 = fmul float %a, %neg_b
  %tmp1 = fadd float %tmp0, %c

  store float %tmp1, float addrspace(1)* %out
  ret void
}




define void @mad_neg_src2(float addrspace(1)* %out, float addrspace(1)* %in) #0 {
entry:
  %b_ptr = getelementptr float, float addrspace(1)* %in, i32 1
  %c_ptr = getelementptr float, float addrspace(1)* %in, i32 2

  %a = load float, float addrspace(1)* %in
  %b = load float, float addrspace(1)* %b_ptr
  %c = load float, float addrspace(1)* %c_ptr

  %neg_c = fsub float 0.0, %c
  %tmp0 = fmul float %a, %b
  %tmp1 = fadd float %tmp0, %neg_c

  store float %tmp1, float addrspace(1)* %out
  ret void
}

attributes #0 = { "true" "unsafe-fp-math"="true" }
