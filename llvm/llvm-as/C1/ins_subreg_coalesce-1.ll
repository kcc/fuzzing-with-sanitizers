

define fastcc i32 @t() nounwind  {
entry:






	br i1 false, label %UnifiedReturnBlock, label %bb4
bb4:		
	br i1 false, label %bb17, label %bb22
bb17:		
	ret i32 1
bb22:		
	br i1 true, label %walkExprTree.exit, label %bb4.i
bb4.i:		
	ret i32 0
walkExprTree.exit:		
	%tmp83 = load i16, i16* null, align 4		
	%tmp84 = or i16 %tmp83, 2		
	store i16 %tmp84, i16* null, align 4
	%tmp98993 = zext i16 %tmp84 to i32		
	%tmp1004 = lshr i32 %tmp98993, 3		
	%tmp100.lobit5 = and i32 %tmp1004, 1		
	ret i32 %tmp100.lobit5
UnifiedReturnBlock:		
	ret i32 0
}
