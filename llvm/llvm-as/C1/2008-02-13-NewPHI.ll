


define i32 @sscal(i32 %n, double %sa1, float* %sx, i32 %incx) {
entry:
	%sx_addr = alloca float*		
	store float* %sx, float** %sx_addr, align 4
	br label %bb33

bb:		
	%tmp27 = load float*, float** %sx_addr, align 4		
	store float 0.000000e+00, float* %tmp27, align 4
	store float* null, float** %sx_addr, align 4
	br label %bb33

bb33:		
	br i1 false, label %bb, label %return

return:		
	%retval59 = load i32, i32* null, align 4		
	ret i32 %retval59
}
