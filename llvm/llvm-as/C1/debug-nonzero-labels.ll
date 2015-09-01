
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @g()


define i32 @f(i32, i32) {
  
  %i = alloca i32
  
  
  
  
  %x = add i32 %0, %1
  store i32 %x, i32* %i
  
  
  
  
  %call = call i32 @g()
  
  
  
  %load = load i32, i32* %i
  ret i32 %load
}
