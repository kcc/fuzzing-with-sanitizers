



target triple = "nvptx-unknown-cuda"

declare { float, float, float, float } @llvm.nvvm.tex.unified.1d.v4f32.s32(i64, i32)
declare i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)*)



define void @foo(i64 %img, float* %red, i32 %idx) {




  %val = tail call { float, float, float, float } @llvm.nvvm.tex.unified.1d.v4f32.s32(i64 %img, i32 %idx)
  %ret = extractvalue { float, float, float, float } %val, 0


  store float %ret, float* %red
  ret void
}


@tex0 = internal addrspace(1) global i64 0, align 8



define void @bar(float* %red, i32 %idx) {

  %texHandle = tail call i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)* @tex0)


  %val = tail call { float, float, float, float } @llvm.nvvm.tex.unified.1d.v4f32.s32(i64 %texHandle, i32 %idx)
  %ret = extractvalue { float, float, float, float } %val, 0


  store float %ret, float* %red
  ret void
}

!nvvm.annotations = !{!1, !2, !3}
!1 = !{void (i64, float*, i32)* @foo, !"kernel", i32 1}
!2 = !{void (float*, i32)* @bar, !"kernel", i32 1}
!3 = !{i64 addrspace(1)* @tex0, !"texture", i32 1}
