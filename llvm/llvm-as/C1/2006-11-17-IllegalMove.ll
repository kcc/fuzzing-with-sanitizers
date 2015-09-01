




define void @handle_vector_size_attribute() nounwind {
entry:
	%tmp69 = load i32, i32* null		
	switch i32 %tmp69, label %bb84 [
		 i32 2, label %bb77
		 i32 1, label %bb77
	]

bb77:		
	%tmp99 = udiv i64 0, 0		
	%tmp = load i8, i8* null		
	%tmp114 = icmp eq i64 0, 0		
	br label %cond_true115

bb84:		
	ret void

cond_true115:		
	%tmp118 = load i8, i8* null		
	br label %cond_true120

cond_true120:		
	%tmp127 = udiv i8 %tmp, %tmp118		
	%tmp127.upgrd.1 = zext i8 %tmp127 to i64		
	br label %cond_next129

cond_next129:		
	%iftmp.30.0 = phi i64 [ %tmp127.upgrd.1, %cond_true120 ]		
	%tmp132 = icmp eq i64 %iftmp.30.0, %tmp99		
	br i1 %tmp132, label %cond_false148, label %cond_next136

cond_next136:		
	ret void

cond_false148:		
	ret void
}
