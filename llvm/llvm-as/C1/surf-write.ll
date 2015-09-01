

target triple = "nvptx-unknown-nvcl"

declare void @llvm.nvvm.sust.b.1d.i32.trap(i64, i32, i32)


define void @foo(i64 %img, i32 %val, i32 %idx) {

  tail call void @llvm.nvvm.sust.b.1d.i32.trap(i64 %img, i32 %idx, i32 %val)
  ret void
}

!nvvm.annotations = !{!1, !2}
!1 = !{void (i64, i32, i32)* @foo, !"kernel", i32 1}
!2 = !{void (i64, i32, i32)* @foo, !"wroimage", i32 0}
