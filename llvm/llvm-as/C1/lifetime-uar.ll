


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

define i32 @basic_test() sanitize_address {
  

entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1

  call void @llvm.lifetime.start(i64 1, i8* %c)
  
  

  store volatile i32 0, i32* %retval
  store volatile i8 0, i8* %c, align 1

  call void @llvm.lifetime.end(i64 1, i8* %c)
  
  

  
  
  

  ret i32 0
}

