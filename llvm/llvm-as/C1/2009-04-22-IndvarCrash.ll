


define i32 @t1() nounwind ssp {
entry:
	br label %bb32

bb32:		
	%mbPartIdx.0.reg2mem.0 = phi i8 [ %2, %bb32 ], [ 0, %entry ]		
	%0 = and i8 %mbPartIdx.0.reg2mem.0, 1		
	%1 = zext i8 %mbPartIdx.0.reg2mem.0 to i64		
	%2 = add i8 %mbPartIdx.0.reg2mem.0, 1		
	%3 = icmp ugt i8 %2, 3		
	br i1 %3, label %bb41, label %bb32

bb41:		
	ret i32 0
}

define i32 @t2() nounwind ssp {
entry:
	br label %bb116

bb116:		
	%mbPartIdx.1.reg2mem.0 = phi i8 [ %3, %bb116 ], [ 0, %entry ]		
	%0 = and i8 %mbPartIdx.1.reg2mem.0, 1		
	%1 = zext i8 %mbPartIdx.1.reg2mem.0 to i64		
	%2 = zext i8 %0 to i32		
	%3 = add i8 %mbPartIdx.1.reg2mem.0, 1		
	%4 = icmp ugt i8 %3, 3		
	br i1 %4, label %bb131, label %bb116

bb131:		
	unreachable
}
