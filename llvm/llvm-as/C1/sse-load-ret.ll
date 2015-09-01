


define double @test1(double* %P) {
        %X = load double, double* %P            
        ret double %X
}

define double @test2() {
        ret double 1.234560e+03
}








