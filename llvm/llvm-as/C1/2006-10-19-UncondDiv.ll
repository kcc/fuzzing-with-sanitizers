




@G = extern_weak global i32

define i32 @test(i32 %tmp) {
cond_false179:
	%tmp181 = icmp eq i32 %tmp, 0		
	br i1 %tmp181, label %cond_true182, label %cond_next185
cond_true182:		
	br label %cond_next185
cond_next185:		
	%d0.3 = phi i32 [ udiv (i32 1, i32 ptrtoint (i32* @G to i32)), %cond_true182 ], [ %tmp, %cond_false179 ]		
	ret i32 %d0.3
}

define i32 @test2(i32 %tmp) {
cond_false179:
	%tmp181 = icmp eq i32 %tmp, 0		
	br i1 %tmp181, label %cond_true182, label %cond_next185
cond_true182:		
	br label %cond_next185
cond_next185:		
	%d0.3 = phi i32 [ udiv (i32 1, i32 ptrtoint (i32* @G to i32)), %cond_true182 ], [ %tmp, %cond_false179 ]		
	call i32 @test( i32 4 )		
	ret i32 %d0.3
}
