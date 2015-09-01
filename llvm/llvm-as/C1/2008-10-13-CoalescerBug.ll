


define i32 @func_77(i8 zeroext %p_79) nounwind {
entry:
	%0 = tail call i32 (...) @func_43(i32 1) nounwind		
	%1 = icmp eq i32 %0, 0		
	br i1 %1, label %bb3, label %bb

bb:		
	br label %bb3

bb3:		
	%p_79_addr.0 = phi i8 [ 0, %bb ], [ %p_79, %entry ]		
	%2 = zext i8 %p_79_addr.0 to i32		
	%3 = zext i1 false to i32		
	%4 = tail call i32 (...) @rshift_u_s(i32 1) nounwind		
	%5 = lshr i32 %2, %2		
	%6 = icmp eq i32 0, 0		
	br i1 %6, label %bb6, label %bb9

bb6:		
	%7 = ashr i32 %5, %3		
	%8 = icmp eq i32 %7, 0		
	%9 = select i1 %8, i32 %3, i32 0		
	%. = shl i32 %5, %9		
	br label %bb9

bb9:		
	%.0 = phi i32 [ %., %bb6 ], [ %5, %bb3 ]		
	br i1 false, label %return, label %bb10

bb10:		
	ret i32 undef

return:		
	ret i32 undef
}

declare i32 @func_43(...)

declare i32 @rshift_u_s(...)
