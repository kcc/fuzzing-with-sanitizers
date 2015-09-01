







define i32 @hash_string(i8* nocapture %key) nounwind readonly {
entry:
	%t0 = load i8, i8* %key, align 1		
	%t1 = icmp eq i8 %t0, 0		
	br i1 %t1, label %bb2, label %bb

bb:		
	%indvar = phi i64 [ 0, %entry ], [ %tmp, %bb ]		
	%k.04 = phi i32 [ 0, %entry ], [ %t8, %bb ]		
	%cp.05 = getelementptr i8, i8* %key, i64 %indvar		
	%t2 = shl i32 %k.04, 1		
	%t3 = lshr i32 %k.04, 14		
	%t4 = add i32 %t2, %t3		
	%t5 = load i8, i8* %cp.05, align 1		
	%t6 = sext i8 %t5 to i32		
	%t7 = xor i32 %t6, %t4		
	%t8 = and i32 %t7, 16383		
	%tmp = add i64 %indvar, 1		
	%scevgep = getelementptr i8, i8* %key, i64 %tmp		
	%t9 = load i8, i8* %scevgep, align 1		
	%t10 = icmp eq i8 %t9, 0		
	br i1 %t10, label %bb2, label %bb

bb2:		
	%k.0.lcssa = phi i32 [ 0, %entry ], [ %t8, %bb ]		
	ret i32 %k.0.lcssa
}
