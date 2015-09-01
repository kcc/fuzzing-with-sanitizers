




define i32 @f(i32 %c.idx.val) {

bb2:
	%k.018 = add i32 %c.idx.val, -1		
	%a14 = icmp slt i32 %k.018, 0		
	br i1 %a14, label %bb19, label %bb16.preheader

bb16.preheader:
	%k.019 = phi i32 [ %k.0, %bb18 ], [ %k.018, %bb2 ]		
	%x = phi i32 [ 0, %bb2 ], [ %x.1, %bb18]
	br label %bb18

bb18:		
	%x.1 = add i32 %x, 1
	%k.0 = add i32 %k.019, -1		
	%a107 = icmp slt i32 %k.0, 0		
	br i1 %a107, label %bb18.bb19_crit_edge, label %bb16.preheader

bb18.bb19_crit_edge:
	ret i32 %x

bb19:
	ret i32 0

}
