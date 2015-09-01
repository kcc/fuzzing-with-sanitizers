






target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"

declare zeroext i1 @return_i1()

define i1 @test(i32 addrspace(1)* %ptr_base, i32 %arg)
  gc "statepoint-example" {










entry:
  %metadata1 = alloca i32 addrspace(1)*, i32 2, align 8
  store i32 addrspace(1)* null, i32 addrspace(1)** %metadata1
  %ptr_derived = getelementptr i32, i32 addrspace(1)* %ptr_base, i32 %arg
  %safepoint_token = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 2, i32 addrspace(1)* %ptr_base, i32 addrspace(1)* null, i32 addrspace(1)* %ptr_base, i32 addrspace(1)* %ptr_derived, i32 addrspace(1)* null)
  %call1 = call zeroext i1 @llvm.experimental.gc.result.i1(i32 %safepoint_token)
  %a = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 9, i32 9)
  %b = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 9, i32 10)
  %c = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 11, i32 11)

  ret i1 %call1
}




define i1 @test_derived_arg(i32 addrspace(1)* %ptr_base,
                            i32 addrspace(1)* %ptr_derived)
  gc "statepoint-example" {










entry:
  %metadata1 = alloca i32 addrspace(1)*, i32 2, align 8
  store i32 addrspace(1)* null, i32 addrspace(1)** %metadata1
  %safepoint_token = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 2, i32 addrspace(1)* %ptr_base, i32 addrspace(1)* null, i32 addrspace(1)* %ptr_base, i32 addrspace(1)* %ptr_derived, i32 addrspace(1)* null)
  %call1 = call zeroext i1 @llvm.experimental.gc.result.i1(i32 %safepoint_token)
  %a = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 9, i32 9)
  %b = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 9, i32 10)
  %c = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 11, i32 11)

  ret i1 %call1
}


define i1 @test_id() gc "statepoint-example" {

entry:
  %safepoint_token = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 237, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0)
  %call1 = call zeroext i1 @llvm.experimental.gc.result.i1(i32 %safepoint_token)
  ret i1 %call1
}


declare i32 @llvm.experimental.gc.statepoint.p0f_i1f(i64, i32, i1 ()*, i32, i32, ...)
declare i1 @llvm.experimental.gc.result.i1(i32)
declare i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32, i32, i32) #3












































































































































































































