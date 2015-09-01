

define double @test(double %d) {
        %X = select i1 false, double %d, double %d              
        ret double %X
}

