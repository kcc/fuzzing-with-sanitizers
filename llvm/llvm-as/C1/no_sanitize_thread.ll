

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"


define i32 @read_4_bytes(i32* %a) {
entry:
  %tmp1 = load i32, i32* %a, align 4
  ret i32 %tmp1
}







define i32 @read_4_bytes_and_call(i32* %a) {
entry:
  call void @foo()
  %tmp1 = load i32, i32* %a, align 4
  ret i32 %tmp1
}










declare void @foo()

