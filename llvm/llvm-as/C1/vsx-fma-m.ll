





target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define void @test1(double %a, double %b, double %c, double %e, double* nocapture %d) #0 {
entry:
  %0 = tail call double @llvm.fma.f64(double %b, double %c, double %a)
  store double %0, double* %d, align 8
  %1 = tail call double @llvm.fma.f64(double %b, double %e, double %a)
  %arrayidx1 = getelementptr inbounds double, double* %d, i64 1
  store double %1, double* %arrayidx1, align 8
  ret void

















}

define void @test2(double %a, double %b, double %c, double %e, double %f, double* nocapture %d) #0 {
entry:
  %0 = tail call double @llvm.fma.f64(double %b, double %c, double %a)
  store double %0, double* %d, align 8
  %1 = tail call double @llvm.fma.f64(double %b, double %e, double %a)
  %arrayidx1 = getelementptr inbounds double, double* %d, i64 1
  store double %1, double* %arrayidx1, align 8
  %2 = tail call double @llvm.fma.f64(double %b, double %f, double %a)
  %arrayidx2 = getelementptr inbounds double, double* %d, i64 2
  store double %2, double* %arrayidx2, align 8
  ret void

























}

define void @test3(double %a, double %b, double %c, double %e, double %f, double* nocapture %d) #0 {
entry:
  %0 = tail call double @llvm.fma.f64(double %b, double %c, double %a)
  store double %0, double* %d, align 8
  %1 = tail call double @llvm.fma.f64(double %b, double %e, double %a)
  %2 = tail call double @llvm.fma.f64(double %b, double %c, double %1)
  %arrayidx1 = getelementptr inbounds double, double* %d, i64 3
  store double %2, double* %arrayidx1, align 8
  %3 = tail call double @llvm.fma.f64(double %b, double %f, double %a)
  %arrayidx2 = getelementptr inbounds double, double* %d, i64 2
  store double %3, double* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds double, double* %d, i64 1
  store double %1, double* %arrayidx3, align 8
  ret void

































}

define void @test4(double %a, double %b, double %c, double %e, double %f, double* nocapture %d) #0 {
entry:
  %0 = tail call double @llvm.fma.f64(double %b, double %c, double %a)
  store double %0, double* %d, align 8
  %1 = tail call double @llvm.fma.f64(double %b, double %e, double %a)
  %arrayidx1 = getelementptr inbounds double, double* %d, i64 1
  store double %1, double* %arrayidx1, align 8
  %2 = tail call double @llvm.fma.f64(double %b, double %c, double %1)
  %arrayidx3 = getelementptr inbounds double, double* %d, i64 3
  store double %2, double* %arrayidx3, align 8
  %3 = tail call double @llvm.fma.f64(double %b, double %f, double %a)
  %arrayidx4 = getelementptr inbounds double, double* %d, i64 2
  store double %3, double* %arrayidx4, align 8
  ret void



































}

declare double @llvm.fma.f64(double, double, double) #0

define void @testv1(<2 x double> %a, <2 x double> %b, <2 x double> %c, <2 x double> %e, <2 x double>* nocapture %d) #0 {
entry:
  %0 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %c, <2 x double> %a)
  store <2 x double> %0, <2 x double>* %d, align 8
  %1 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %e, <2 x double> %a)
  %arrayidx1 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 1
  store <2 x double> %1, <2 x double>* %arrayidx1, align 8
  ret void

















}

define void @testv2(<2 x double> %a, <2 x double> %b, <2 x double> %c, <2 x double> %e, <2 x double> %f, <2 x double>* nocapture %d) #0 {
entry:
  %0 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %c, <2 x double> %a)
  store <2 x double> %0, <2 x double>* %d, align 8
  %1 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %e, <2 x double> %a)
  %arrayidx1 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 1
  store <2 x double> %1, <2 x double>* %arrayidx1, align 8
  %2 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %f, <2 x double> %a)
  %arrayidx2 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 2
  store <2 x double> %2, <2 x double>* %arrayidx2, align 8
  ret void

























}

define void @testv3(<2 x double> %a, <2 x double> %b, <2 x double> %c, <2 x double> %e, <2 x double> %f, <2 x double>* nocapture %d) #0 {
entry:
  %0 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %c, <2 x double> %a)
  store <2 x double> %0, <2 x double>* %d, align 8
  %1 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %e, <2 x double> %a)
  %2 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %c, <2 x double> %1)
  %arrayidx1 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 3
  store <2 x double> %2, <2 x double>* %arrayidx1, align 8
  %3 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %f, <2 x double> %a)
  %arrayidx2 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 2
  store <2 x double> %3, <2 x double>* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 1
  store <2 x double> %1, <2 x double>* %arrayidx3, align 8
  ret void










































}

define void @testv4(<2 x double> %a, <2 x double> %b, <2 x double> %c, <2 x double> %e, <2 x double> %f, <2 x double>* nocapture %d) #0 {
entry:
  %0 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %c, <2 x double> %a)
  store <2 x double> %0, <2 x double>* %d, align 8
  %1 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %e, <2 x double> %a)
  %arrayidx1 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 1
  store <2 x double> %1, <2 x double>* %arrayidx1, align 8
  %2 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %c, <2 x double> %1)
  %arrayidx3 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 3
  store <2 x double> %2, <2 x double>* %arrayidx3, align 8
  %3 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %b, <2 x double> %f, <2 x double> %a)
  %arrayidx4 = getelementptr inbounds <2 x double>, <2 x double>* %d, i64 2
  store <2 x double> %3, <2 x double>* %arrayidx4, align 8
  ret void



































}

declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) #0

attributes #0 = { nounwind readnone }

