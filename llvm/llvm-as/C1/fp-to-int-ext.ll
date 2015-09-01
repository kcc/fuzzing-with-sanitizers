
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define double @foo1(i32* %x) #0 {
entry:
  %0 = load i32, i32* %x, align 4
  %conv = sext i32 %0 to i64
  %conv1 = sitofp i64 %conv to double
  ret double %conv1





}

define double @foo2(i32* %x) #0 {
entry:
  %0 = load i32, i32* %x, align 4
  %conv = zext i32 %0 to i64
  %conv1 = sitofp i64 %conv to double
  ret double %conv1





}

define double @foo3(i32* %x) #0 {
entry:
  %0 = load i32, i32* %x, align 4
  %1 = add i32 %0, 8
  %conv = zext i32 %1 to i64
  %conv1 = sitofp i64 %conv to double
  ret double %conv1









}

define double @foo4(i32* %x) #0 {
entry:
  %0 = load i32, i32* %x, align 4
  %1 = add i32 %0, 8
  %conv = sext i32 %1 to i64
  %conv1 = sitofp i64 %conv to double
  ret double %conv1









}

attributes #0 = { nounwind }

