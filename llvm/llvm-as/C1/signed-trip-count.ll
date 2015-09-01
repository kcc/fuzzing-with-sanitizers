




target datalayout = "n8:16:32:64"


define void @foo(i64* nocapture %x, i32 %n) nounwind {
entry:
	%tmp102 = icmp sgt i32 %n, 0		
	br i1 %tmp102, label %bb.nph, label %return

bb.nph:		
	br label %bb

bb:		
	%i.01 = phi i32 [ %tmp6, %bb7 ], [ 0, %bb.nph ]		
	%tmp1 = sext i32 %i.01 to i64		
	%tmp4 = getelementptr i64, i64* %x, i32 %i.01		
	store i64 %tmp1, i64* %tmp4, align 8
	%tmp6 = add i32 %i.01, 1		
	br label %bb7

bb7:		
	%tmp10 = icmp slt i32 %tmp6, %n		
	br i1 %tmp10, label %bb, label %bb7.return_crit_edge

bb7.return_crit_edge:		
	br label %return

return:		
	ret void
}
