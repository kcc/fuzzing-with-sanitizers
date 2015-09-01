




@X = internal global i32 4		

declare double @sin(double) readnone

define i32 @test(i32* %P) {




	store i32 12, i32* @X
	call double @doesnotmodX( double 1.000000e+00 )		
	%V = load i32, i32* @X		
	ret i32 %V
}

define double @doesnotmodX(double %V) {
	%V2 = call double @sin( double %V ) readnone		
	ret double %V2
}
