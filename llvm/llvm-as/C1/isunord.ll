

declare i1 @llvm.isunordered.f64(double, double)

define i1 @test(double %X, double %Y) {
        %tmp27 = fcmp uno double %X, %Y         
        ret i1 %tmp27
}

