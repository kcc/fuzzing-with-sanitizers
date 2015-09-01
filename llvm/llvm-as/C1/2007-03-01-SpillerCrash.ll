


define void @test() nounwind {
test.exit:
	fmul <4 x float> zeroinitializer, zeroinitializer		
	load <4 x float>, <4 x float>* null		
	shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> < i32 3, i32 3, i32 3, i32 3 >		
	fmul <4 x float> %0, %2		
	fsub <4 x float> zeroinitializer, %3		
	fmul <4 x float> %4, zeroinitializer		
	bitcast <4 x float> zeroinitializer to <4 x i32>		
	and <4 x i32> %6, < i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647 >		
	bitcast <4 x i32> %7 to <4 x float>		
	extractelement <4 x float> %8, i32 0		
	extractelement <4 x float> %8, i32 1		
	br i1 false, label %11, label %19


	br i1 false, label %17, label %12


	br i1 false, label %19, label %13


	fsub float -0.000000e+00, 0.000000e+00		
	%tmp207 = extractelement <4 x float> zeroinitializer, i32 0		
	%tmp208 = extractelement <4 x float> zeroinitializer, i32 2		
	fsub float -0.000000e+00, %tmp208		
	%tmp155 = extractelement <4 x float> zeroinitializer, i32 0		
	%tmp156 = extractelement <4 x float> zeroinitializer, i32 2		
	fsub float -0.000000e+00, %tmp156		
	br label %19


	br i1 false, label %19, label %18


	br label %19


	phi i32 [ 5, %18 ], [ 3, %13 ], [ 1, %test.exit ], [ 2, %12 ], [ 4, %17 ]		
	phi float [ 0.000000e+00, %18 ], [ %16, %13 ], [ 0.000000e+00, %test.exit ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %17 ]		
	phi float [ 0.000000e+00, %18 ], [ %tmp155, %13 ], [ 0.000000e+00, %test.exit ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %17 ]		
	phi float [ 0.000000e+00, %18 ], [ %15, %13 ], [ 0.000000e+00, %test.exit ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %17 ]		
	phi float [ 0.000000e+00, %18 ], [ %tmp207, %13 ], [ 0.000000e+00, %test.exit ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %17 ]		
	phi float [ 0.000000e+00, %18 ], [ %10, %13 ], [ %9, %test.exit ], [ %10, %12 ], [ 0.000000e+00, %17 ]		
	phi float [ 0.000000e+00, %18 ], [ %14, %13 ], [ 0.000000e+00, %test.exit ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %17 ]		
	phi float [ 0.000000e+00, %18 ], [ 0.000000e+00, %13 ], [ 0.000000e+00, %test.exit ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %17 ]		
	insertelement <4 x float> undef, float %27, i32 0		
	insertelement <4 x float> %28, float %26, i32 1		
	insertelement <4 x float> undef, float %24, i32 0		
	insertelement <4 x float> %30, float %23, i32 1		
	insertelement <4 x float> %31, float %25, i32 2		
	insertelement <4 x float> %32, float %25, i32 3		
	fdiv <4 x float> %33, zeroinitializer		
	fmul <4 x float> %34, < float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01 >		
	insertelement <4 x float> undef, float %22, i32 0		
	insertelement <4 x float> %36, float %21, i32 1		
	br i1 false, label %foo.exit, label %38


	extractelement <4 x float> %0, i32 0		
	fcmp ogt float %39, 0.000000e+00		
	extractelement <4 x float> %0, i32 2		
	extractelement <4 x float> %0, i32 1		
	fsub float -0.000000e+00, %42		
	%tmp189 = extractelement <4 x float> %5, i32 2		
	br i1 %40, label %44, label %46


	fsub float -0.000000e+00, %tmp189		
	br label %foo.exit


	%tmp192 = extractelement <4 x float> %5, i32 1		
	fsub float -0.000000e+00, %tmp192		
	br label %foo.exit

foo.exit:		
	phi float [ 0.000000e+00, %44 ], [ %47, %46 ], [ 0.000000e+00, %19 ]		
	phi float [ %43, %44 ], [ %43, %46 ], [ 0.000000e+00, %19 ]		
	phi float [ 0.000000e+00, %44 ], [ %41, %46 ], [ 0.000000e+00, %19 ]		
	shufflevector <4 x float> %35, <4 x float> zeroinitializer, <4 x i32> < i32 0, i32 4, i32 1, i32 5 >		
	unreachable
}
