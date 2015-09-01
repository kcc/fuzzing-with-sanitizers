





@atomic = global double 0.000000e+00		
@atomic2 = global double 0.000000e+00		
@ioport = global i32 0		
@ioport2 = global i32 0		

define i16 @f(i64 %x) {
	%b = bitcast i64 %x to double		
	store double %b, double* @atomic
	store double 0.000000e+00, double* @atomic2
	%l = load i32, i32* @ioport		
	%t = trunc i32 %l to i16		
	%l2 = load i32, i32* @ioport2		
	%tmp = lshr i32 %l2, 16		
	%t2 = trunc i32 %tmp to i16		
	%f = add i16 %t, %t2		
	ret i16 %f
}
