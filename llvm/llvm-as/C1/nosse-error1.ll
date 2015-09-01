






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"
@f = external global float		
@d = external global double		

define void @test() nounwind {
entry:
	%0 = load float, float* @f, align 4		
	%1 = tail call float @foo1(float %0) nounwind		
	store float %1, float* @f, align 4
	%2 = load double, double* @d, align 8		
	%3 = tail call double @foo2(double %2) nounwind		
	store double %3, double* @d, align 8
	%4 = load float, float* @f, align 4		
	%5 = tail call float @foo3(float %4) nounwind		
	store float %5, float* @f, align 4
	%6 = load double, double* @d, align 8		
	%7 = tail call double @foo4(double %6) nounwind		
	store double %7, double* @d, align 8
	ret void
}

declare float @foo1(float)

declare double @foo2(double)

declare float @foo3(float)

declare double @foo4(double)
