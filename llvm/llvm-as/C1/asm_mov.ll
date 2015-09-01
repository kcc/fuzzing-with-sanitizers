

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


































define void @mov1b(i8* %dst, i8* %src) #0 {
entry:
  tail call void asm sideeffect "movb ($1), %al  \0A\09movb %al, ($0)  \0A\09", "r,r,~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i8* %dst, i8* %src) #1, !srcloc !0
  ret void
}













define void @mov2b(i16* %dst, i16* %src) #0 {
entry:
  tail call void asm sideeffect "movw ($1), %ax  \0A\09movw %ax, ($0)  \0A\09", "r,r,~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i16* %dst, i16* %src) #1, !srcloc !1
  ret void
}













define void @mov4b(i32* %dst, i32* %src) #0 {
entry:
  tail call void asm sideeffect "movl ($1), %eax  \0A\09movl %eax, ($0)  \0A\09", "r,r,~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i32* %dst, i32* %src) #1, !srcloc !2
  ret void
}









































define void @mov8b(i64* %dst, i64* %src) #0 {
entry:
  tail call void asm sideeffect "movq ($1), %rax  \0A\09movq %rax, ($0)  \0A\09", "r,r,~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64* %dst, i64* %src) #1, !srcloc !3
  ret void
}













define void @mov16b(<2 x i64>* %dst, <2 x i64>* %src) #0 {
entry:
  tail call void asm sideeffect "movaps ($1), %xmm0  \0A\09movaps %xmm0, ($0)  \0A\09", "r,r,~{memory},~{xmm0},~{dirflag},~{fpsr},~{flags}"(<2 x i64>* %dst, <2 x i64>* %src) #1, !srcloc !4
  ret void
}

attributes #0 = { nounwind uwtable sanitize_address "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!0 = !{i32 98, i32 122, i32 160}
!1 = !{i32 305, i32 329, i32 367}
!2 = !{i32 512, i32 537, i32 576}
!3 = !{i32 721, i32 746, i32 785}
!4 = !{i32 929, i32 957, i32 999}
