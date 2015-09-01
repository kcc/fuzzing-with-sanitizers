



declare i1 @llvm.isunordered.f64(double, double)

define i1 @test1(double %X, double %Y) {
        %COM = fcmp uno double %X, %Y           
        ret i1 %COM
}

