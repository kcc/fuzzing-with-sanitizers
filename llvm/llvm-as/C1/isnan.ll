

declare i1 @llvm.isunordered.f64(double)

define i1 @test_isnan(double %X) {
        %R = fcmp uno double %X, %X             
        ret i1 %R
}

