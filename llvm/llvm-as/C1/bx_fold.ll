

define void @test(i32 %Ptr, i8* %L) {
entry:
	br label %bb1

bb:		
	%gep.upgrd.1 = zext i32 %indvar to i64		
	%tmp7 = getelementptr i8, i8* %L, i64 %gep.upgrd.1		
	store i8 0, i8* %tmp7
	%indvar.next = add i32 %indvar, 1		
	br label %bb1

bb1:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%i.0 = bitcast i32 %indvar to i32		
	%tmp = tail call i32 (...) @bar( )		
	%tmp2 = add i32 %i.0, %tmp		
	%Ptr_addr.0 = sub i32 %Ptr, %tmp2		
	%tmp12 = icmp eq i32 %i.0, %Ptr		
	%tmp12.not = xor i1 %tmp12, true		
	%bothcond = and i1 %tmp12.not, false		
	br i1 %bothcond, label %bb, label %bb18

bb18:		


	ret void
}

declare i32 @bar(...)
