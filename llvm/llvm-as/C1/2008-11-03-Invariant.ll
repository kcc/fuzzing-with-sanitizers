


define i32 @a(i32 %x, i32 %y) nounwind {
entry:
	%0 = icmp ult i32 0, %y		
	br i1 %0, label %bb.nph, label %bb4

bb.nph:		
	%1 = icmp eq i32 %x, 0		
	br label %bb

bb:		
	%i.01 = phi i32 [ %3, %bb3 ], [ 0, %bb.nph ]		
	br i1 %1, label %bb2, label %bb1

bb1:		
	%2 = tail call i32 (...) @b() nounwind		
	br label %bb2

bb2:		
	%3 = add i32 %i.01, 1		
	br label %bb3

bb3:		
	%i.0 = phi i32 [ %3, %bb2 ]		
	%4 = icmp ult i32 %i.0, %y		
	br i1 %4, label %bb, label %bb3.bb4_crit_edge

bb3.bb4_crit_edge:		
	br label %bb4

bb4:		
	ret i32 0
}

declare i32 @b(...)
