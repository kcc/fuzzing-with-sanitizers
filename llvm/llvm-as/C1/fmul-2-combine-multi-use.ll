




declare float @llvm.fabs.f32(float) #1







define void @multiple_fadd_use_test(float addrspace(1)* %out, float %x, float %y, float %z) #0 {
  %a11 = fadd fast float %y, -1.0
  %a12 = call float @llvm.fabs.f32(float %a11)
  %a13 = fadd fast float %x, -1.0
  %a14 = call float @llvm.fabs.f32(float %a13)
  %a15 = fcmp ogt float %a12, %a14
  %a16 = select i1 %a15, float %a12, float %a14
  %a17 = fmul fast float %a16, 2.0
  %a18 = fmul fast float %a17, %a17
  %a19 = fmul fast float %a18, %a17
  %a20 = fsub fast float 1.0, %a19
  store float %a20, float addrspace(1)* %out
  ret void
}







define void @multiple_use_fadd_fmac(float addrspace(1)* %out, float %x, float %y) #0 {
  %out.gep.1 = getelementptr float, float addrspace(1)* %out, i32 1
  %mul2 = fmul fast float %x, 2.0
  %mad = fadd fast float %mul2, %y
  store float %mul2, float addrspace(1)* %out
  store float %mad, float addrspace(1)* %out.gep.1
  ret void
}







define void @multiple_use_fadd_fmad(float addrspace(1)* %out, float %x, float %y) #0 {
  %out.gep.1 = getelementptr float, float addrspace(1)* %out, i32 1
  %x.abs = call float @llvm.fabs.f32(float %x)
  %mul2 = fmul fast float %x.abs, 2.0
  %mad = fadd fast float %mul2, %y
  store float %mul2, float addrspace(1)* %out
  store float %mad, float addrspace(1)* %out.gep.1
  ret void
}




define void @multiple_use_fadd_multi_fmad(float addrspace(1)* %out, float %x, float %y, float %z) #0 {
  %out.gep.1 = getelementptr float, float addrspace(1)* %out, i32 1
  %x.abs = call float @llvm.fabs.f32(float %x)
  %mul2 = fmul fast float %x.abs, 2.0
  %mad0 = fadd fast float %mul2, %y
  %mad1 = fadd fast float %mul2, %z
  store float %mad0, float addrspace(1)* %out
  store float %mad1, float addrspace(1)* %out.gep.1
  ret void
}





define void @fmul_x2_xn2(float addrspace(1)* %out, float %x, float %y) #0 {
  %out.gep.1 = getelementptr float, float addrspace(1)* %out, i32 1
  %mul2 = fmul fast float %x, 2.0
  %muln2 = fmul fast float %x, -2.0
  %mul = fmul fast float %mul2, %muln2
  store float %mul, float addrspace(1)* %out
  ret void
}






define void @fmul_x2_xn3(float addrspace(1)* %out, float %x, float %y) #0 {
  %out.gep.1 = getelementptr float, float addrspace(1)* %out, i32 1
  %mul2 = fmul fast float %x, 2.0
  %muln2 = fmul fast float %x, -3.0
  %mul = fmul fast float %mul2, %muln2
  store float %mul, float addrspace(1)* %out
  ret void
}

attributes #0 = { nounwind "unsafe-fp-math"="true" }
attributes #1 = { nounwind readnone }
