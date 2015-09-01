


@foo = external global i32		

define void @test(i32 %n, i32 %arg) {
entry:
	br i1 false, label %bb.nph, label %return

bb.nph:		
	%0 = load i32, i32* @foo, align 4		
	%1 = sext i32 %0 to i64		
	br label %bb

bb:		
	%.in = phi i32 [ %2, %bb ], [ %n, %bb.nph ]		
	%val.02 = phi i64 [ %5, %bb ], [ 0, %bb.nph ]		
	%result.01 = phi i64 [ %4, %bb ], [ 0, %bb.nph ]		
	%2 = add i32 %.in, -1		
	%3 = mul i64 %1, %val.02		
	%4 = add i64 %3, %result.01		
	%5 = add i64 %val.02, 1		
	%6 = icmp sgt i32 %2, 0		
	br i1 %6, label %bb, label %bb3.bb4_crit_edge

bb3.bb4_crit_edge:		
	%.lcssa = phi i64 [ %4, %bb ]		
	ret void

return:		
	ret void
}
