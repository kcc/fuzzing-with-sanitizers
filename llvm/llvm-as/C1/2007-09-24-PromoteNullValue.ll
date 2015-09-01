


define i32 @f(i32 %foo, i32 %bar, i32 %com) {
entry:
	%tmp2 = icmp eq i32 %foo, 0		
	br i1 %tmp2, label %cond_next, label %cond_true

cond_true:		
	br label %return

cond_next:		
	br label %bb

bb:		
	switch i32 %bar, label %bb15 [
		 i32 1, label %bb6
	]

bb6:		
	%tmp8 = icmp eq i32 %com, 0		
	br i1 %tmp8, label %cond_next14, label %cond_true11

cond_true11:		
	br label %return

cond_next14:		
	store i8 0, i8* null
	br label %bb15

bb15:		
	br label %bb

return:		
	%storemerge = phi i32 [ 0, %cond_true ], [ undef, %cond_true11 ]		
	ret i32 %storemerge
}

define i32 @kdMain() {
entry:
	%tmp1 = call i32 @f( i32 0, i32 1, i32 1 )		
	call void @exit( i32 0 )
	unreachable
}

declare void @exit(i32)
