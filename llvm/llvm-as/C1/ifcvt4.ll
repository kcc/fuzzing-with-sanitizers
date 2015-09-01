






define i32 @t(i32 %a, i32 %b) {
entry:
	%tmp1434 = icmp eq i32 %a, %b		
	br i1 %tmp1434, label %bb17, label %bb.outer

bb.outer:		
	%b_addr.021.0.ph = phi i32 [ %b, %entry ], [ %tmp10, %cond_false ]		
	%a_addr.026.0.ph = phi i32 [ %a, %entry ], [ %a_addr.026.0, %cond_false ]		
	br label %bb

bb:		
	%indvar = phi i32 [ 0, %bb.outer ], [ %indvar.next, %cond_true ]		
	%tmp. = sub i32 0, %b_addr.021.0.ph		
	%tmp.40 = mul i32 %indvar, %tmp.		
	%a_addr.026.0 = add i32 %tmp.40, %a_addr.026.0.ph		
	%tmp3 = icmp sgt i32 %a_addr.026.0, %b_addr.021.0.ph		
	br i1 %tmp3, label %cond_true, label %cond_false

cond_true:		
	%tmp7 = sub i32 %a_addr.026.0, %b_addr.021.0.ph		
	%tmp1437 = icmp eq i32 %tmp7, %b_addr.021.0.ph		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp1437, label %bb17, label %bb

cond_false:		
	%tmp10 = sub i32 %b_addr.021.0.ph, %a_addr.026.0		
	%tmp14 = icmp eq i32 %a_addr.026.0, %tmp10		
	br i1 %tmp14, label %bb17, label %bb.outer

bb17:		
	%a_addr.026.1 = phi i32 [ %a, %entry ], [ %tmp7, %cond_true ], [ %a_addr.026.0, %cond_false ]		
	ret i32 %a_addr.026.1
}
