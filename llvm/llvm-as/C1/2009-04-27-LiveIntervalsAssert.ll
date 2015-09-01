


define void @int163(i32 %p_4, i32 %p_5) nounwind {
entry:
	%0 = tail call i32 @bar(i32 1) nounwind		
	%1 = icmp sgt i32 %0, 7		
	br i1 %1, label %foo.exit, label %bb.i

bb.i:		
	%2 = lshr i32 1, %0		
	%3 = icmp eq i32 %2, 0		
	%4 = zext i1 %3 to i32		
	%.p_5 = shl i32 %p_5, %4		
	br label %foo.exit

foo.exit:		
	%5 = phi i32 [ %.p_5, %bb.i ], [ %p_5, %entry ]		
	%6 = icmp eq i32 %5, 0		
	%7 = tail call i32 @bar(i32 %p_5) nounwind		
	ret void
}

declare i32 @bar(i32)
