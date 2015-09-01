

define double @test1(double %X) {
        %Y = fptosi double %X to i64            
        %Z = sitofp i64 %Y to double            
        ret double %Z
}

define float @test2(double %X) {
        %Y = fptosi double %X to i64            
        %Z = sitofp i64 %Y to float             
        ret float %Z
}

define double @test3(float %X) {
        %Y = fptosi float %X to i64             
        %Z = sitofp i64 %Y to double            
        ret double %Z
}

define float @test4(float %X) {
        %Y = fptosi float %X to i64             
        %Z = sitofp i64 %Y to float             
        ret float %Z
}


