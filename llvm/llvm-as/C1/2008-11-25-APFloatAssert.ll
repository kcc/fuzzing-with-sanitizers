

define void @t() nounwind {
entry:
	br label %bb23.i91

bb23.i91:		
	%result.0.i89 = phi ppc_fp128 [ 0xM00000000000000000000000000000000, %entry ], [ %0, %bb23.i91 ]		
	%0 = fmul ppc_fp128 %result.0.i89, %result.0.i89		
	br label %bb23.i91
}
