





define void @another_count_down_signed(double* %d, i64 %n) nounwind {
entry:
	br label %loop

loop:		
	%indvar = phi i64 [ %n, %entry ], [ %indvar.next, %loop ]		
	%s0 = shl i64 %indvar, 8		
	%indvar.i8 = ashr i64 %s0, 8		
	%t0 = getelementptr double, double* %d, i64 %indvar.i8		
	%t1 = load double, double* %t0		
	%t2 = fmul double %t1, 1.000000e-01		
	store double %t2, double* %t0
	%indvar.next = sub i64 %indvar, 1		
	%exitcond = icmp eq i64 %indvar.next, 10		
	br i1 %exitcond, label %return, label %loop

return:		
	ret void
}
