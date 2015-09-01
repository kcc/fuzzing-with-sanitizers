


define double @test(double %X) nounwind {
	
	%Y = fsub double %X, %X
	ret double %Y
}
