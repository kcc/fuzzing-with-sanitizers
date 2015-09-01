



define i32 @foo(i32 %l) nounwind  {
entry:
	%cond = icmp eq i32 %l, 1		
	br i1 %cond, label %bb, label %bb9

bb:		
	br label %bb9

bb5:		
	%tmp7 = call i32 (...) @bar( i32 %x.0 ) nounwind 		
	br label %bb9

bb9:		
	%x.0 = phi i32 [ 0, %entry ], [ %tmp7, %bb5 ], [ 1525, %bb ]		
	%l_addr.0 = phi i32 [ %l, %entry ], [ %tmp11, %bb5 ], [ %l, %bb ]		
	%tmp11 = add i32 %l_addr.0, -1		
	%tmp13 = icmp eq i32 %tmp11, -1		
	br i1 %tmp13, label %bb15, label %bb5

bb15:		
	ret i32 %x.0
}

declare i32 @bar(...)
