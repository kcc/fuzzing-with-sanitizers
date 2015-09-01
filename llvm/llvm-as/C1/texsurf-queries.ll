


target triple = "nvptx-unknown-cuda"

@tex0 = internal addrspace(1) global i64 0, align 8
@surf0 = internal addrspace(1) global i64 0, align 8

declare i32 @llvm.nvvm.txq.width(i64)
declare i32 @llvm.nvvm.txq.height(i64)
declare i32 @llvm.nvvm.suq.width(i64)
declare i32 @llvm.nvvm.suq.height(i64)
declare i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)*)




define i32 @t0(i64 %texHandle) {


  %width = tail call i32 @llvm.nvvm.txq.width(i64 %texHandle)
  ret i32 %width
}



define i32 @t1() {

  %texHandle = tail call i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)* @tex0)


  %width = tail call i32 @llvm.nvvm.txq.width(i64 %texHandle)
  ret i32 %width
}




define i32 @t2(i64 %texHandle) {


  %height = tail call i32 @llvm.nvvm.txq.height(i64 %texHandle)
  ret i32 %height
}



define i32 @t3() {

  %texHandle = tail call i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)* @tex0)


  %height = tail call i32 @llvm.nvvm.txq.height(i64 %texHandle)
  ret i32 %height
}




define i32 @s0(i64 %surfHandle) {


  %width = tail call i32 @llvm.nvvm.suq.width(i64 %surfHandle)
  ret i32 %width
}



define i32 @s1() {

  %surfHandle = tail call i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)* @surf0)


  %width = tail call i32 @llvm.nvvm.suq.width(i64 %surfHandle)
  ret i32 %width
}




define i32 @s2(i64 %surfHandle) {


  %height = tail call i32 @llvm.nvvm.suq.height(i64 %surfHandle)
  ret i32 %height
}



define i32 @s3() {

  %surfHandle = tail call i64 @llvm.nvvm.texsurf.handle.internal.p1i64(i64 addrspace(1)* @surf0)


  %height = tail call i32 @llvm.nvvm.suq.height(i64 %surfHandle)
  ret i32 %height
}



!nvvm.annotations = !{!1, !2}
!1 = !{i64 addrspace(1)* @tex0, !"texture", i32 1}
!2 = !{i64 addrspace(1)* @surf0, !"surface", i32 1}
