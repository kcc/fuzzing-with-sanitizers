

target triple = "nvptx-unknown-nvcl"

declare { float, float, float, float } @llvm.nvvm.tex.1d.v4f32.s32(i64, i64, i32)


define void @foo(i64 %img, i64 %sampler, float* %red, i32 %idx) {

  %val = tail call { float, float, float, float } @llvm.nvvm.tex.1d.v4f32.s32(i64 %img, i64 %sampler, i32 %idx)
  %ret = extractvalue { float, float, float, float } %val, 0

  store float %ret, float* %red
  ret void
}

!nvvm.annotations = !{!1, !2, !3}
!1 = !{void (i64, i64, float*, i32)* @foo, !"kernel", i32 1}
!2 = !{void (i64, i64, float*, i32)* @foo, !"rdoimage", i32 0}
!3 = !{void (i64, i64, float*, i32)* @foo, !"sampler", i32 1}
