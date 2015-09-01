
target triple = "x86_64-apple-macosx"

define double @test1(double %a, double %b) nounwind {
  %wa = fpext double %a to x86_fp80
  %wb = fpext double %b to x86_fp80
  %wr = fadd x86_fp80 %wa, %wb
  %r = fptrunc x86_fp80 %wr to double
  ret double %r



}

define double @test2(double %a, double %b) nounwind {
  %wa = fpext double %a to x86_fp80
  %wb = fpext double %b to x86_fp80
  %wr = fsub x86_fp80 %wa, %wb
  %r = fptrunc x86_fp80 %wr to double
  ret double %r



}

define double @test3(double %a, double %b) nounwind {
  %wa = fpext double %a to x86_fp80
  %wb = fpext double %b to x86_fp80
  %wr = fmul x86_fp80 %wa, %wb
  %r = fptrunc x86_fp80 %wr to double
  ret double %r



}

define double @test4(double %a, half %b) nounwind {
  %wa = fpext double %a to x86_fp80
  %wb = fpext half %b to x86_fp80
  %wr = fmul x86_fp80 %wa, %wb
  %r = fptrunc x86_fp80 %wr to double
  ret double %r



}

define double @test5(double %a, double %b) nounwind {
  %wa = fpext double %a to x86_fp80
  %wb = fpext double %b to x86_fp80
  %wr = fdiv x86_fp80 %wa, %wb
  %r = fptrunc x86_fp80 %wr to double
  ret double %r



}
