


define void @int163(i32 %p_4, i32 %p_5) nounwind {
entry:
	%0 = tail call i32 @foo(i32 1) nounwind		
	%1 = icmp eq i32 %0, 0		
	br i1 %1, label %bb.i, label %bar.exit

bb.i:		
	%2 = lshr i32 1, %0		
	%3 = icmp eq i32 %2, 0		
	%retval.i = select i1 %3, i32 1, i32 %p_5		
	br label %bar.exit

bar.exit:		
	%4 = phi i32 [ %retval.i, %bb.i ], [ %p_5, %entry ]		
	%5 = icmp eq i32 %4, 0		
	%6 = tail call i32 @foo(i32 %p_5) nounwind		
	ret void
}

declare i32 @foo(i32)
