

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"














define void @mov8b_rbp(i64* %dst, i64* %src) #0 {
entry:
  tail call void asm sideeffect "movq ($0), %rax \0A\09movq %rax, ($1) \0A\09", "r,r,~{rax},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %src, i64* %dst)
  ret void
}














define void @mov8b_rsp(i64* %dst, i64* %src) #1 {
entry:
  tail call void asm sideeffect "movq ($0), %rax \0A\09movq %rax, ($1) \0A\09", "r,r,~{rax},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %src, i64* %dst)
  ret void
}



define void @mov8b_rsp_no_cfi(i64* %dst, i64* %src) #2 {
entry:
  tail call void asm sideeffect "movq ($0), %rax \0A\09movq %rax, ($1) \0A\09", "r,r,~{rax},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %src, i64* %dst)
  ret void
}

attributes #0 = { nounwind sanitize_address uwtable "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" }
attributes #1 = { nounwind sanitize_address uwtable "no-frame-pointer-elim"="false" }
attributes #2 = { nounwind sanitize_address "no-frame-pointer-elim"="false" }
