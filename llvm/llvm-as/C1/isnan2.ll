



define i32 @test(double %X) nounwind  {
entry:
	%tmp6 = fcmp uno double %X, 0.000000e+00		
	%tmp67 = zext i1 %tmp6 to i32		
	ret i32 %tmp67
}

