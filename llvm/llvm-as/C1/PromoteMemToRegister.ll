


define double @testfunc(i32 %i, double %j) {
	%I = alloca i32		
	%J = alloca double		
	store i32 %i, i32* %I
	store double %j, double* %J
	%t1 = load i32, i32* %I		
	%t2 = add i32 %t1, 1		
	store i32 %t2, i32* %I
	%t3 = load i32, i32* %I		
	%t4 = sitofp i32 %t3 to double		
	%t5 = load double, double* %J		
	%t6 = fmul double %t4, %t5		
	ret double %t6
}

