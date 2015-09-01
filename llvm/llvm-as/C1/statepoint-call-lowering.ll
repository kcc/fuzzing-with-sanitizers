



target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare zeroext i1 @return_i1()
declare zeroext i32 @return_i32()
declare i32* @return_i32ptr()
declare float @return_float()
declare void @varargf(i32, ...)

define i1 @test_i1_return() gc "statepoint-example" {







entry:
  %safepoint_token = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0)
  %call1 = call zeroext i1 @llvm.experimental.gc.result.i1(i32 %safepoint_token)
  ret i1 %call1
}

define i32 @test_i32_return() gc "statepoint-example" {





entry:
  %safepoint_token = tail call i32 (i64, i32, i32 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i32f(i64 0, i32 0, i32 ()* @return_i32, i32 0, i32 0, i32 0, i32 0)
  %call1 = call zeroext i32 @llvm.experimental.gc.result.i32(i32 %safepoint_token)
  ret i32 %call1
}

define i32* @test_i32ptr_return() gc "statepoint-example" {





entry:
  %safepoint_token = tail call i32 (i64, i32, i32* ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_p0i32f(i64 0, i32 0, i32* ()* @return_i32ptr, i32 0, i32 0, i32 0, i32 0)
  %call1 = call i32* @llvm.experimental.gc.result.p0i32(i32 %safepoint_token)
  ret i32* %call1
}

define float @test_float_return() gc "statepoint-example" {





entry:
  %safepoint_token = tail call i32 (i64, i32, float ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_f32f(i64 0, i32 0, float ()* @return_float, i32 0, i32 0, i32 0, i32 0)
  %call1 = call float @llvm.experimental.gc.result.f32(i32 %safepoint_token)
  ret float %call1
}

define i1 @test_relocate(i32 addrspace(1)* %a) gc "statepoint-example" {







entry:
  %safepoint_token = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, i32 addrspace(1)* %a)
  %call1 = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token,  i32 7, i32 7)
  %call2 = call zeroext i1 @llvm.experimental.gc.result.i1(i32 %safepoint_token)
  ret i1 %call2
}

define void @test_void_vararg() gc "statepoint-example" {



entry:
  %safepoint_token = tail call i32 (i64, i32, void (i32, ...)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidi32varargf(i64 0, i32 0, void (i32, ...)* @varargf, i32 2, i32 0, i32 42, i32 43, i32 0, i32 0)
  
  
  ret void
}

define i1 @test_i1_return_patchable() gc "statepoint-example" {






entry:
  %safepoint_token = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 3, i1 ()*null, i32 0, i32 0, i32 0, i32 0)
  %call1 = call zeroext i1 @llvm.experimental.gc.result.i1(i32 %safepoint_token)
  ret i1 %call1
}

declare i32 @llvm.experimental.gc.statepoint.p0f_i1f(i64, i32, i1 ()*, i32, i32, ...)
declare i1 @llvm.experimental.gc.result.i1(i32)

declare i32 @llvm.experimental.gc.statepoint.p0f_i32f(i64, i32, i32 ()*, i32, i32, ...)
declare i32 @llvm.experimental.gc.result.i32(i32)

declare i32 @llvm.experimental.gc.statepoint.p0f_p0i32f(i64, i32, i32* ()*, i32, i32, ...)
declare i32* @llvm.experimental.gc.result.p0i32(i32)

declare i32 @llvm.experimental.gc.statepoint.p0f_f32f(i64, i32, float ()*, i32, i32, ...)
declare float @llvm.experimental.gc.result.f32(i32)

declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidi32varargf(i64, i32, void (i32, ...)*, i32, i32, ...)

declare i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32, i32, i32)
