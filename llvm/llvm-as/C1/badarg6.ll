



@.LC12 = internal global [44 x i8] c"\09\09M = %g, I = %g, V = %g\0A\09\09O = %g, E = %g\0A\0A\00"		

declare i32 @printf(i8*, ...)

declare double @opaque(double)

define i32 @main(i32 %argc, i8** %argv) {
bb25:
	%b = icmp sle i32 %argc, 2		
	br i1 %b, label %bb42, label %bb43

bb42:		
	%reg315 = call double @opaque( double 3.000000e+00 )		
	%reg316 = call double @opaque( double 3.100000e+00 )		
	%reg317 = call double @opaque( double 3.200000e+00 )		
	%reg318 = call double @opaque( double 3.300000e+00 )		
	%reg319 = call double @opaque( double 3.400000e+00 )		
	br label %bb43

bb43:		
	%reg321 = phi double [ 2.000000e-01, %bb25 ], [ %reg315, %bb42 ]		
	%reg322 = phi double [ 6.000000e+00, %bb25 ], [ %reg316, %bb42 ]		
	%reg323 = phi double [ -1.000000e+00, %bb25 ], [ %reg317, %bb42 ]		
	%reg324 = phi double [ -1.000000e+00, %bb25 ], [ %reg318, %bb42 ]		
	%reg325 = phi double [ 1.000000e+00, %bb25 ], [ %reg319, %bb42 ]		
	%reg609 = call i32 (i8*, ...) @printf( i8* getelementptr ([44 x i8], [44 x i8]* @.LC12, i64 0, i64 0), double %reg325, double %reg324, double %reg323, double %reg322, double %reg321 )		
	ret i32 0
}
