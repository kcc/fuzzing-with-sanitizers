


declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @fabs(double)

declare double @llvm.pow.f64(double, double) nounwind readonly

define void @SolveCubic_bb1(i32* %solutions, double* %x, x86_fp80 %.reload, x86_fp80 %.reload5, x86_fp80 %.reload6, double %.reload8) nounwind {
newFuncRoot:
	br label %bb1

bb1.ret.exitStub:		
	ret void

bb1:		
	store i32 1, i32* %solutions, align 4
	%0 = tail call double @llvm.sqrt.f64(double %.reload8)		
	%1 = fptrunc x86_fp80 %.reload6 to double		
	%2 = tail call double @fabs(double %1) nounwind readnone		
	%3 = fadd double %0, %2		
	%4 = tail call double @llvm.pow.f64(double %3, double 0x3FD5555555555555)		
	%5 = fpext double %4 to x86_fp80		
	%6 = fdiv x86_fp80 %.reload5, %5		
	%7 = fadd x86_fp80 %5, %6		
	%8 = fptrunc x86_fp80 %7 to double		
	%9 = fcmp olt x86_fp80 %.reload6, 0xK00000000000000000000		
	%iftmp.6.0 = select i1 %9, double 1.000000e+00, double -1.000000e+00		
	%10 = fmul double %8, %iftmp.6.0		
	%11 = fpext double %10 to x86_fp80		
	%12 = fdiv x86_fp80 %.reload, 0xKC000C000000000000000		
	%13 = fadd x86_fp80 %11, %12		
	%14 = fptrunc x86_fp80 %13 to double		
	store double %14, double* %x, align 1
	br label %bb1.ret.exitStub
}
