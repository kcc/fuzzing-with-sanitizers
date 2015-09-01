
define double @test(i1 %X) {
        %Y = uitofp i1 %X to double             
        ret double %Y
}

