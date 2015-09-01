


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin8"

define x86_fp80 @x() {
entry:
	%retval = alloca x86_fp80, align 16		
	%tmp = alloca x86_fp80, align 16		
	%d = alloca double, align 8		
	%"alloca point" = bitcast i32 0 to i32		
	store double 0.000000e+00, double* %d, align 8
	%tmp1 = load double, double* %d, align 8		
	%tmp12 = fpext double %tmp1 to x86_fp80		
	store x86_fp80 %tmp12, x86_fp80* %tmp, align 16
	%tmp3 = load x86_fp80, x86_fp80* %tmp, align 16		
	store x86_fp80 %tmp3, x86_fp80* %retval, align 16
	br label %return

return:		
	%retval4 = load x86_fp80, x86_fp80* %retval		
	ret x86_fp80 %retval4
}

define double @y() {
entry:
	%retval = alloca double, align 8		
	%tmp = alloca double, align 8		
	%ld = alloca x86_fp80, align 16		
	%"alloca point" = bitcast i32 0 to i32		
	store x86_fp80 0xK00000000000000000000, x86_fp80* %ld, align 16
	%tmp1 = load x86_fp80, x86_fp80* %ld, align 16		
	%tmp12 = fptrunc x86_fp80 %tmp1 to double		
	store double %tmp12, double* %tmp, align 8
	%tmp3 = load double, double* %tmp, align 8		
	store double %tmp3, double* %retval, align 8
	br label %return

return:		
	%retval4 = load double, double* %retval		
	ret double %retval4
}
