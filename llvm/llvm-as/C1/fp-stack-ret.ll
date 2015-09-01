







define double @test1(double *%P) {
        %A = load double, double* %P
        ret double %A
}





define fastcc double @test2(<2 x double> %A) {
	%B = extractelement <2 x double> %A, i32 0
	ret double %B
}




define fastcc double @test3(<4 x float> %A) {
	%B = bitcast <4 x float> %A to <2 x double>
	%C = call fastcc double @test2(<2 x double> %B)
	ret double %C
}






define void @test4(double *%P) {
  %A = call double @test1(double *%P)
  ret void
}
