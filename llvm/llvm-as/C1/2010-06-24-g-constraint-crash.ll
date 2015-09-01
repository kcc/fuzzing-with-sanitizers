


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

%0 = type { i64, i64, i64, i64, i64 }

@utcbs.1559 = internal global [3 x i64] zeroinitializer 

define void @bar() nounwind ssp {
entry:
  %asmtmp.i.i = tail call %0 asm sideeffect "push %rbp
  %asmtmp.i1.i = tail call %0 asm sideeffect "mov $10, %r8
  ret void
}
