


define i32 @main() {
	%double1 = fadd double 0.000000e+00, 0.000000e+00		
	%double2 = fadd double 0.000000e+00, 0.000000e+00		
	%float1 = fadd float 0.000000e+00, 0.000000e+00		
	%float2 = fadd float 0.000000e+00, 0.000000e+00		
	%test49 = fcmp oeq float %float1, %float2		
	%test50 = fcmp oge float %float1, %float2		
	%test51 = fcmp ogt float %float1, %float2		
	%test52 = fcmp ole float %float1, %float2		
	%test53 = fcmp olt float %float1, %float2		
	%test54 = fcmp une float %float1, %float2		
	%test55 = fcmp oeq double %double1, %double2		
	%test56 = fcmp oge double %double1, %double2		
	%test57 = fcmp ogt double %double1, %double2		
	%test58 = fcmp ole double %double1, %double2		
	%test59 = fcmp olt double %double1, %double2		
	%test60 = fcmp une double %double1, %double2		
	ret i32 0
}


