

	%struct.x = type { float, double }
@X = global %struct.x { float 1.000000e+00, double 2.000000e+00 }, align 16		

define i32 @main() nounwind  {
entry:
	%tmp2 = load float, float* getelementptr (%struct.x, %struct.x* @X, i32 0, i32 0), align 16		
	%tmp4 = load double, double* getelementptr (%struct.x, %struct.x* @X, i32 0, i32 1), align 8		
	tail call void @t( float %tmp2, double %tmp4 ) nounwind 
	ret i32 0
}

declare void @t(float, double)
