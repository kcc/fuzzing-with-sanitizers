
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define double @test1(i64* nocapture readonly %x) #0 {
entry:
  %0 = load i64, i64* %x, align 8
  %conv = sitofp i64 %0 to double
  ret double %conv





}


define double @test2(i32* nocapture readonly %x) #0 {
entry:
  %0 = load i32, i32* %x, align 4
  %conv = sitofp i32 %0 to double
  ret double %conv





}


define float @foo(float %X) #0 {
entry:
  %conv = fptosi float %X to i32
  %conv1 = sitofp i32 %conv to float
  ret float %conv1








}


define double @food(double %X) #0 {
entry:
  %conv = fptosi double %X to i32
  %conv1 = sitofp i32 %conv to double
  ret double %conv1








}


define float @foou(float %X) #0 {
entry:
  %conv = fptoui float %X to i32
  %conv1 = uitofp i32 %conv to float
  ret float %conv1








}


define double @fooud(double %X) #0 {
entry:
  %conv = fptoui double %X to i32
  %conv1 = uitofp i32 %conv to double
  ret double %conv1








}

attributes #0 = { nounwind readonly }

