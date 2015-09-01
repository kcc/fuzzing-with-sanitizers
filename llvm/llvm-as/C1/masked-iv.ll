






define void @foo(i64* %A, i64* %B, i64 %n, i64 %a, i64 %s) nounwind {
entry:
	%t0 = icmp sgt i64 %n, 0		
	br i1 %t0, label %bb.preheader, label %return

bb.preheader:		
	br label %bb

bb:		
	%i.01 = phi i64 [ %t6, %bb ], [ %a, %bb.preheader ]		
	%t1 = and i64 %i.01, 255		
	%t2 = getelementptr i64, i64* %A, i64 %t1		
	store i64 %i.01, i64* %t2, align 8
	%t6 = add i64 %i.01, %s		
	br label %bb

return:		
	ret void
}
