








define i32 @f(i32 %x) nounwind readnone {
entry:
	%0 = icmp ugt i32 %x, 999		
	br i1 %0, label %bb2, label %bb.nph

bb.nph:		
	br label %bb

bb:		
	%indvar = phi i32 [ 0, %bb.nph ], [ %indvar.next, %bb1 ]		
	%tmp = mul i32 %indvar, 3		
	%x_addr.04 = add i32 %tmp, %x		
	%1 = add i32 %x_addr.04, 3		
	br label %bb1

bb1:		
	%2 = icmp ugt i32 %1, 999		
	%indvar.next = add i32 %indvar, 1		
	br i1 %2, label %bb1.bb2_crit_edge, label %bb

bb1.bb2_crit_edge:		
	%.lcssa = phi i32 [ %1, %bb1 ]		
	br label %bb2

bb2:		
	%x_addr.0.lcssa = phi i32 [ %.lcssa, %bb1.bb2_crit_edge ], [ %x, %entry ]		
	ret i32 %x_addr.0.lcssa
}
