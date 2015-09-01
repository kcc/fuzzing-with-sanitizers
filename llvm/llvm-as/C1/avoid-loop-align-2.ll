





@x = external global i32*		

define i32 @t(i32 %a, i32 %b) nounwind readonly ssp {
entry:
	%0 = icmp eq i32 %a, 0		
	br i1 %0, label %bb5, label %bb.nph12

bb.nph12:		
	%1 = icmp eq i32 %b, 0		
	%2 = load i32*, i32** @x, align 8		
	br i1 %1, label %bb2.preheader, label %bb2.preheader.us

bb2.preheader.us:		
	%indvar18 = phi i32 [ 0, %bb.nph12 ], [ %indvar.next19, %bb2.bb3_crit_edge.us ]		
	%sum.111.us = phi i32 [ 0, %bb.nph12 ], [ %4, %bb2.bb3_crit_edge.us ]		
	%tmp16 = mul i32 %indvar18, %a		
	br label %bb1.us

bb1.us:		
	%indvar = phi i32 [ 0, %bb2.preheader.us ], [ %indvar.next, %bb1.us ]		
	%tmp17 = add i32 %indvar, %tmp16		
	%tmp. = zext i32 %tmp17 to i64		
	%3 = getelementptr i32, i32* %2, i64 %tmp.		
	%4 = load i32, i32* %3, align 4		
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp eq i32 %indvar.next, %b		
	br i1 %exitcond, label %bb2.bb3_crit_edge.us, label %bb1.us

bb2.bb3_crit_edge.us:		
	%indvar.next19 = add i32 %indvar18, 1		
	%exitcond22 = icmp eq i32 %indvar.next19, %a		
	br i1 %exitcond22, label %bb5, label %bb2.preheader.us

bb2.preheader:		
	%indvar24 = phi i32 [ %indvar.next25, %bb2.preheader ], [ 0, %bb.nph12 ]		
	%indvar.next25 = add i32 %indvar24, 1		
	%exitcond28 = icmp eq i32 %indvar.next25, %a		
	br i1 %exitcond28, label %bb5, label %bb2.preheader

bb5:		
	%sum.1.lcssa = phi i32 [ 0, %entry ], [ 0, %bb2.preheader ], [ %4, %bb2.bb3_crit_edge.us ]		
	ret i32 %sum.1.lcssa
}
