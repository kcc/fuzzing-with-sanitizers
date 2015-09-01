

target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define float @fool(float %X) #0 {
entry:
  %conv = fptosi float %X to i64
  %conv1 = sitofp i64 %conv to float
  ret float %conv1











}


define double @foodl(double %X) #0 {
entry:
  %conv = fptosi double %X to i64
  %conv1 = sitofp i64 %conv to double
  ret double %conv1










}


define float @fooul(float %X) #0 {
entry:
  %conv = fptoui float %X to i64
  %conv1 = uitofp i64 %conv to float
  ret float %conv1





}


define double @fooudl(double %X) #0 {
entry:
  %conv = fptoui double %X to i64
  %conv1 = uitofp i64 %conv to double
  ret double %conv1





}

attributes #0 = { nounwind readnone }

