

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"









































define void @rep_movs_1b(i8* %dst, i8* %src, i64 %n) #0 {
entry:
  tail call void asm sideeffect "rep movsb \0A\09", "{si},{di},{cx},~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %src, i8* %dst, i64 %n) #1
  ret void
}





























define void @rep_movs_8b(i64* %dst, i64* %src, i64 %n) #0 {
entry:
  tail call void asm sideeffect "rep movsq \0A\09", "{si},{di},{cx},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %src, i64* %dst, i64 %n) #1
  ret void
}

attributes #0 = { nounwind sanitize_address uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
