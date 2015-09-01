

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

define void @_Z4testv() {





entry:
  call void @_Z15throw_exceptionv()
  ret void
}

declare void @_Z15throw_exceptionv()
