


@atomic = global double 0.000000e+00		
@atomic2 = global double 0.000000e+00		
@anything = global i64 0		
@ioport = global i32 0		

define i16 @f(i64 %x, double %y) {
	%b = bitcast i64 %x to double		
	store volatile double %b, double* @atomic 
	store volatile double 0.000000e+00, double* @atomic2 
	%b2 = bitcast double %y to i64		
	store volatile i64 %b2, i64* @anything 
	%l = load volatile i32, i32* @ioport		
	%t = trunc i32 %l to i16		
	%l2 = load volatile i32, i32* @ioport		
	%tmp = lshr i32 %l2, 16		
	%t2 = trunc i32 %tmp to i16		
	%f = add i16 %t, %t2		
	ret i16 %f
}
