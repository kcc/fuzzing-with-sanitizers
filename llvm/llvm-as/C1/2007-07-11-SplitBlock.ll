

define i32 @stringSearch_Clib(i32 %count) {
entry:
	br i1 false, label %bb36, label %bb44

cond_true20:		
	%tmp33 = add i32 0, 0		
	br label %bb36

bb36:		
	%c.2 = phi i32 [ %tmp33, %cond_true20 ], [ 0, %entry ]		
	br i1 false, label %cond_true20, label %bb41

bb41:		
	%c.2.lcssa = phi i32 [ %c.2, %bb36 ]		
	ret i32 0

bb44:		
	ret i32 0
}
