

define i32 @t() nounwind  {
entry:
	%tmp54 = add i32 0, 1		
	br i1 false, label %bb71, label %bb77
bb71:		
	%tmp74 = shl i32 %tmp54, 1		
	%tmp76 = ashr i32 %tmp74, 3		
	br label %bb77
bb77:		
	%payLoadSize.0 = phi i32 [ %tmp76, %bb71 ], [ 0, %entry ]		
	unreachable
}
