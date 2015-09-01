
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"





declare zeroext i1 @return_i1()
declare i32 @llvm.experimental.gc.statepoint.p0f_i1f(i64, i32, i1 ()*, i32, i32, ...)
declare i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32, i32, i32)

define i32 addrspace(1)* @deref(i32 addrspace(1)* dereferenceable(8) %dparam) gc "statepoint-example" {



entry:
    %load = load i32, i32 addrspace(1)* %dparam
    %tok = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, i32 addrspace(1)* %dparam)
    %relocate = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %tok,  i32 7, i32 7)
    ret i32 addrspace(1)* %relocate
}
