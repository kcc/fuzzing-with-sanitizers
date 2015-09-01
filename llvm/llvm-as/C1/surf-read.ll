

target triple = "nvptx-unknown-nvcl"

declare i32 @llvm.nvvm.suld.1d.i32.trap(i64, i32)


define void @foo(i64 %img, float* %red, i32 %idx) {

  %val = tail call i32 @llvm.nvvm.suld.1d.i32.trap(i64 %img, i32 %idx)

  %ret = sitofp i32 %val to float

  store float %ret, float* %red
  ret void
}

!nvvm.annotations = !{!1, !2}
!1 = !{void (i64, float*, i32)* @foo, !"kernel", i32 1}
!2 = !{void (i64, float*, i32)* @foo, !"rdwrimage", i32 0}
