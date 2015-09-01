






define i32 @test(float %f) {
	%tmp = fcmp oeq float %f, 0.000000e+00		
	%tmp.upgrd.1 = zext i1 %tmp to i32		
	ret i32 %tmp.upgrd.1
}

