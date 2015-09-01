


target triple = "nvptx-unknown-cuda"

declare i32 @llvm.nvvm.suld.1d.i32.trap(i64, i32)
declare i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)*)




define void @foo(i64 %img, float* %red, i32 %idx) {




  %val = tail call i32 @llvm.nvvm.suld.1d.i32.trap(i64 %img, i32 %idx)


  %ret = sitofp i32 %val to float


  store float %ret, float* %red
  ret void
}

@surf0 = internal addrspace(1) global i64 0, align 8



define void @bar(float* %red, i32 %idx) {

  %surfHandle = tail call i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)* @surf0)


  %val = tail call i32 @llvm.nvvm.suld.1d.i32.trap(i64 %surfHandle, i32 %idx)


  %ret = sitofp i32 %val to float


  store float %ret, float* %red
  ret void
}




!nvvm.annotations = !{!1, !2, !3}
!1 = !{void (i64, float*, i32)* @foo, !"kernel", i32 1}
!2 = !{void (float*, i32)* @bar, !"kernel", i32 1}
!3 = !{i64 addrspace(1)* @surf0, !"surface", i32 1}

