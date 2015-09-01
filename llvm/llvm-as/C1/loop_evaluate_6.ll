

define i32 @test(i32 %x_offs) nounwind readnone {
entry:
	%0 = icmp sgt i32 %x_offs, 4		
	br i1 %0, label %bb.nph, label %bb2

bb.nph:		
	br label %bb

bb:		
	%x_offs_addr.01 = phi i32 [ %1, %bb1 ], [ %x_offs, %bb.nph ]		
	%1 = add i32 %x_offs_addr.01, -4		
	br label %bb1

bb1:		
	%2 = icmp sgt i32 %1, 4		
	br i1 %2, label %bb, label %bb1.bb2_crit_edge

bb1.bb2_crit_edge:		
	br label %bb2

bb2:		
	%x_offs_addr.0.lcssa = phi i32 [ %1, %bb1.bb2_crit_edge ], [ %x_offs, %entry ]		
	ret i32 %x_offs_addr.0.lcssa
}
