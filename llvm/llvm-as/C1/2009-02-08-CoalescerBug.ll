


define i32 @foo(i8 signext %p_26) nounwind {
entry:
	%0 = icmp eq i8 %p_26, 0		
	%or.cond = or i1 false, %0		
	%iftmp.1.0 = zext i1 %or.cond to i16		
	br i1 %0, label %bb.i, label %bar.exit

bb.i:		
	%1 = zext i1 %or.cond to i32		
	%2 = sdiv i32 %1, 0		
	%3 = trunc i32 %2 to i16		
	br label %bar.exit

bar.exit:		
	%4 = phi i16 [ %3, %bb.i ], [ %iftmp.1.0, %entry ]		
	%5 = trunc i16 %4 to i8		
	%6 = sext i8 %5 to i32		
	ret i32 %6
}
