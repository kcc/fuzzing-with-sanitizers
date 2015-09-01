
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define zeroext i1 @testi1(i1 zeroext %b1, i1 zeroext %b2) #0 {
entry:
  %0 = tail call i8 asm "crand $0, $1, $2", "=^wc,^wc,^wc"(i1 %b1, i1 %b2) #0
  %1 = and i8 %0, 1
  %tobool3 = icmp ne i8 %1, 0
  ret i1 %tobool3










}

define signext i32 @testi32(i32 signext %b1, i32 signext %b2) #0 {
entry:
  %0 = tail call i32 asm "crand $0, $1, $2", "=^wc,^wc,^wc"(i32 %b1, i32 %b2) #0
  ret i32 %0













}

define zeroext i8 @testi8(i8 zeroext %b1, i8 zeroext %b2) #0 {
entry:
  %0 = tail call i8 asm "crand $0, $1, $2", "=^wc,^wc,^wc"(i8 %b1, i8 %b2) #0
  ret i8 %0










}

attributes #0 = { nounwind }

