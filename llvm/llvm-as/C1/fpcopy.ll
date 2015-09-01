

define double @test(float %F) {
        %F.upgrd.1 = fpext float %F to double           
        ret double %F.upgrd.1
}

