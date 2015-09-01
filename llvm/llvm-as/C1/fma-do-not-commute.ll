


target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx"









define void @test1(float* %addr, float* %addr2, float %arg) {
entry:
  br label %loop

loop:
  %sum0 = phi float [ %fma, %loop ], [ %arg, %entry ]
  %addrVal = load float, float* %addr, align 4
  %addr2Val = load float, float* %addr2, align 4
  %fmul = fmul float %addrVal, %addr2Val
  %fma = fadd float %sum0, %fmul
  br i1 true, label %exit, label %loop

exit:
  store float %fma, float* %addr, align 4
  ret void
}
