



define void @foo(double* nocapture %P) nounwind {
entry:
	%0 = tail call double (...) @test() nounwind		
	%1 = tail call double (...) @test() nounwind		
	%2 = fmul double %0, %0		
	%3 = fmul double %1, %1		
	%4 = fadd double %2, %3		
	store double %4, double* %P, align 8
	ret void
}

declare double @test(...)
