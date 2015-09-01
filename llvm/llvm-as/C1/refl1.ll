

target triple = "nvptx-nvidia-cuda"



define void @foo(float* nocapture %a) #0 {
  %val = load float, float* %a
  %tan = tail call fastcc float @__nv_fast_tanf(float %val)
  store float %tan, float* %a
  ret void
}


declare float @llvm.nvvm.sin.approx.ftz.f(float) #1


declare float @llvm.nvvm.cos.approx.ftz.f(float) #1


declare float @llvm.nvvm.div.approx.ftz.f(float, float) #1



define internal fastcc float @__nv_fast_tanf(float %a) #2 {
entry:
  %0 = tail call float @llvm.nvvm.sin.approx.ftz.f(float %a)
  %1 = tail call float @llvm.nvvm.cos.approx.ftz.f(float %a)
  %2 = tail call float @llvm.nvvm.div.approx.ftz.f(float %0, float %1)
  ret float %2
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline inlinehint nounwind readnone }

!nvvm.annotations = !{!0}

!0 = !{void (float*)* @foo, !"kernel", i32 1}
