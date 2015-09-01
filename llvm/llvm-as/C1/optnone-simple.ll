





attributes #0 = { noinline }
attributes #1 = { noinline optnone }



define i32 @iadd_optimize(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}







define i32 @iadd_optnone(i32 %a, i32 %b) #1 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}













define float @fsub_optimize(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %sub = fsub float %0, %1
  ret float %sub
}







define float @fsub_optnone(float %a, float %b) #1 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %sub = fsub float %0, %1
  ret float %sub
}














define <4 x float> @vmul_optimize(<4 x float> %a, <4 x float> %b) #0 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %b.addr = alloca <4 x float>, align 16
  store <4 x float> %a, <4 x float>* %a.addr, align 16
  store <4 x float> %b, <4 x float>* %b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %b.addr, align 16
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}







define <4 x float> @vmul_optnone(<4 x float> %a, <4 x float> %b) #1 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %b.addr = alloca <4 x float>, align 16
  store <4 x float> %a, <4 x float>* %a.addr, align 16
  store <4 x float> %b, <4 x float>* %b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %b.addr, align 16
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}










