


define void @sintzero(i32* %a) nounwind {
entry:
	store i32 0, i32* %a
	br label %cond_next

cond_next:		
	%indvar = phi i32 [ 0, %entry ], [ %tmp25, %cond_next ]		
	%tmp25 = add i32 %indvar, 1		
	%tmp36 = getelementptr i32, i32* %a, i32 %tmp25		
	store i32 0, i32* %tmp36
	icmp eq i32 %tmp25, -1		
	br i1 %0, label %return, label %cond_next

return:		
	ret void
}



