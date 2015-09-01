






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"
@G = external global i32              

declare void @bar(...)







define void @test1() nounwind {
entry:



















        call void asm "frob $0 x", "*m"(i32* @G) nounwind
        call void asm "frob ${0:P} x", "*m"(i32* @G) nounwind
        ret void
}

define void @test3() nounwind {
entry:


























  tail call void asm sideeffect "call ${0:P}", "X"(void (...)* @bar) nounwind
  tail call void asm sideeffect "call ${0:P}", "X"(void (...)* bitcast (void ()* @test3 to void (...)*)) nounwind
  tail call void asm sideeffect "call $0", "X"(void (...)* @bar) nounwind
  tail call void asm sideeffect "call $0", "X"(void (...)* bitcast (void ()* @test3 to void (...)*)) nounwind
  ret void
}
