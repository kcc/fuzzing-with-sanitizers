



	%struct.dpoint = type { double, double }

define %struct.dpoint @midpoint(i64 %p1.0, i64 %p2.0) nounwind readnone {
entry:
	%0 = trunc i64 %p1.0 to i32		
	%1 = sitofp i32 %0 to double		
	%2 = trunc i64 %p2.0 to i32		
	%3 = sitofp i32 %2 to double		
	%4 = fadd double %1, %3		
	%5 = fmul double %4, 5.000000e-01		
	%6 = lshr i64 %p1.0, 32		
	%7 = trunc i64 %6 to i32		
	%8 = sitofp i32 %7 to double		
	%9 = lshr i64 %p2.0, 32		
	%10 = trunc i64 %9 to i32		
	%11 = sitofp i32 %10 to double		
	%12 = fadd double %8, %11		
	%13 = fmul double %12, 5.000000e-01		
	%mrv3 = insertvalue %struct.dpoint undef, double %5, 0		
	%mrv4 = insertvalue %struct.dpoint %mrv3, double %13, 1		
	ret %struct.dpoint %mrv4
}
