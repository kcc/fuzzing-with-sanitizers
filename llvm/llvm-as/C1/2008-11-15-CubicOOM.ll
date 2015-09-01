


define i32 @a() nounwind  {
entry:
	br label %bb

bb:		
	%w.0 = phi i32 [ 0, %entry ], [ %tmp, %bb ]		
	%e.0 = phi i32 [ 0, %entry ], [ %e.1, %bb ]		
	%w.1 = add i32 0, %w.0		
	%tmp = add i32 %e.0, %w.0		
	%e.1 = add i32 %e.0, 1		
	%cond = icmp eq i32 %w.1, -1		
	br i1 %cond, label %return, label %bb

return:		
	ret i32 undef
}
