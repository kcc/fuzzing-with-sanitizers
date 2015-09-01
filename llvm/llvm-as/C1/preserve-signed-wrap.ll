






target datalayout = "n8:16:32:64"


define void @foo(i32* nocapture %d, i32 %n) nounwind {
entry:
	%0 = icmp sgt i32 %n, 0		
	br i1 %0, label %bb.nph, label %return

bb.nph:		
	br label %bb





bb:		
	%i.02 = phi i32 [ %5, %bb1 ], [ 0, %bb.nph ]		
	%p.01 = phi i8 [ %4, %bb1 ], [ -1, %bb.nph ]		
	%1 = sext i8 %p.01 to i32		
	%2 = sext i32 %i.02 to i64		
	%3 = getelementptr i32, i32* %d, i64 %2		
	store i32 %1, i32* %3, align 4
	%4 = add i8 %p.01, 1		
	%5 = add i32 %i.02, 1		
	br label %bb1

bb1:		
	%6 = icmp slt i32 %5, %n		
	br i1 %6, label %bb, label %bb1.return_crit_edge

bb1.return_crit_edge:		
	br label %return

return:		
	ret void
}
