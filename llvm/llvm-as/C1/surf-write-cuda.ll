


target triple = "nvptx-unknown-cuda"

declare void @llvm.nvvm.sust.b.1d.i32.trap(i64, i32, i32)
declare i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)*)




define void @foo(i64 %img, i32 %val, i32 %idx) {




  tail call void @llvm.nvvm.sust.b.1d.i32.trap(i64 %img, i32 %idx, i32 %val)
  ret void
}


@surf0 = internal addrspace(1) global i64 0, align 8





define void @bar(i32 %val, i32 %idx) {

  %surfHandle = tail call i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)* @surf0)


  tail call void @llvm.nvvm.sust.b.1d.i32.trap(i64 %surfHandle, i32 %idx, i32 %val)
  ret void
}


!nvvm.annotations = !{!1, !2, !3}
!1 = !{void (i64, i32, i32)* @foo, !"kernel", i32 1}
!2 = !{void (i32, i32)* @bar, !"kernel", i32 1}
!3 = !{i64 addrspace(1)* @surf0, !"surface", i32 1}

