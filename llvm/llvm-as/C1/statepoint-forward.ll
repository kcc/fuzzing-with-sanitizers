











target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"



declare void @func() readonly




define i1 @test_load_forward(i32 addrspace(1)* addrspace(1)* %p) gc "statepoint-example" {
entry:
  %before = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(1)* %p
  %cmp1 = call i1 @f(i32 addrspace(1)* %before)
  call void @llvm.assume(i1 %cmp1)
  %safepoint_token = tail call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @func, i32 0, i32 0, i32 0, i32 0, i32 addrspace(1)* addrspace(1)* %p)
  %pnew = call i32 addrspace(1)* addrspace(1)* @llvm.experimental.gc.relocate.p1p1i32(i32 %safepoint_token,  i32 7, i32 7)
  %after = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(1)* %pnew
  %cmp2 = call i1 @f(i32 addrspace(1)* %after)
  ret i1 %cmp2





}


define i1 @test_store_forward(i32 addrspace(1)* addrspace(1)* %p,
                              i32 addrspace(1)* %v) gc "statepoint-example" {
entry:
  %cmp1 = call i1 @f(i32 addrspace(1)* %v)
  call void @llvm.assume(i1 %cmp1)
  store i32 addrspace(1)* %v, i32 addrspace(1)* addrspace(1)* %p
  %safepoint_token = tail call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @func, i32 0, i32 0, i32 0, i32 0, i32 addrspace(1)* addrspace(1)* %p)
  %pnew = call i32 addrspace(1)* addrspace(1)* @llvm.experimental.gc.relocate.p1p1i32(i32 %safepoint_token,  i32 7, i32 7)
  %after = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(1)* %pnew
  %cmp2 = call i1 @f(i32 addrspace(1)* %after)
  ret i1 %cmp2





}





declare i1 @f(i32 addrspace(1)* %v) readnone






define i1 @test_load_forward_nongc_heap(i32 addrspace(1)** %p) gc "statepoint-example" {
entry:
  %before = load i32 addrspace(1)*, i32 addrspace(1)** %p
  %cmp1 = call i1 @f(i32 addrspace(1)* %before)
  call void @llvm.assume(i1 %cmp1)
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @func, i32 0, i32 0, i32 0, i32 0)
  %after = load i32 addrspace(1)*, i32 addrspace(1)** %p
  %cmp2 = call i1 @f(i32 addrspace(1)* %after)
  ret i1 %cmp2





}


define i1 @test_store_forward_nongc_heap(i32 addrspace(1)** %p,
                                         i32 addrspace(1)* %v) gc "statepoint-example" {
entry:
  %cmp1 = call i1 @f(i32 addrspace(1)* %v)
  call void @llvm.assume(i1 %cmp1)
  store i32 addrspace(1)* %v, i32 addrspace(1)** %p
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @func, i32 0, i32 0, i32 0, i32 0)
  %after = load i32 addrspace(1)*, i32 addrspace(1)** %p
  %cmp2 = call i1 @f(i32 addrspace(1)* %after)
  ret i1 %cmp2





}

declare void @llvm.assume(i1)
declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
declare i32 addrspace(1)* addrspace(1)* @llvm.experimental.gc.relocate.p1p1i32(i32, i32, i32) #3
