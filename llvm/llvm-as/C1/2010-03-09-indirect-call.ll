

target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128"
target triple = "powerpc-apple-darwin11.0"



@p = external global void (...)*                  

define void @foo() nounwind ssp {
entry:


  %0 = load void (...)*, void (...)** @p, align 4              
  call void (...) %0() nounwind
  br label %return

return:                                           
  ret void
}
