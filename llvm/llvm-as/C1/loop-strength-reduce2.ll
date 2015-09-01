




@flags2 = internal global [8193 x i8] zeroinitializer, align 32		

define void @test(i32 %k, i32 %i) nounwind {
entry:
	%k_addr.012 = shl i32 %i, 1		
	%tmp14 = icmp sgt i32 %k_addr.012, 8192		
	br i1 %tmp14, label %return, label %bb

bb:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%tmp. = shl i32 %i, 1		
	%tmp.15 = mul i32 %indvar, %i		
	%tmp.16 = add i32 %tmp.15, %tmp.		
	%k_addr.0.0 = bitcast i32 %tmp.16 to i32		
	%gep.upgrd.1 = zext i32 %tmp.16 to i64		
	%tmp = getelementptr [8193 x i8], [8193 x i8]* @flags2, i32 0, i64 %gep.upgrd.1		
	store i8 0, i8* %tmp
	%k_addr.0 = add i32 %k_addr.0.0, %i		
	%tmp.upgrd.2 = icmp sgt i32 %k_addr.0, 8192		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp.upgrd.2, label %return, label %bb

return:		
	ret void
}
