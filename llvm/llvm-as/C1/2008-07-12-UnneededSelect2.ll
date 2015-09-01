





define i32 @a(i32 %x) nounwind  {
entry:
	icmp sgt i32 %x, 1		
	br i1 %0, label %bb.nph, label %bb2

bb.nph:		
	br label %bb

bb:		
	%z.02 = phi i32 [ %1, %bb1 ], [ 1, %bb.nph ]		
	%i.01 = phi i32 [ %2, %bb1 ], [ 1, %bb.nph ]		
	mul i32 %z.02, %i.01		
	add i32 %i.01, 1		
	br label %bb1

bb1:		
	icmp slt i32 %2, %x		
	br i1 %3, label %bb, label %bb1.bb2_crit_edge

bb1.bb2_crit_edge:		
	%.lcssa = phi i32 [ %1, %bb1 ]		
	br label %bb2

bb2:		
	%z.0.lcssa = phi i32 [ %.lcssa, %bb1.bb2_crit_edge ], [ 1, %entry ]		
	ret i32 %z.0.lcssa
}
