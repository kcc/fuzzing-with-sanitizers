







target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @LoadAndCmp(i32* nocapture %a) nounwind uwtable sanitize_memory {
entry:
  %0 = load i32, i32* %a, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  tail call void (...) @foo() nounwind
  br label %if.end

if.end:                                           
  ret void
}

declare void @foo(...)










define void @Store(i64* nocapture %p, i64 %x) nounwind uwtable sanitize_memory {
entry:
  store i64 %x, i64* %p, align 4
  ret void
}












