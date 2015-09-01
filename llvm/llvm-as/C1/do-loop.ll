




define i32 @f(i32 %x, i32 %y) {
entry:
	br label %bb

bb:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%x_addr.0 = add i32 %indvar, %x		
	%tmp2 = add i32 %x_addr.0, 1		
	%tmp5 = icmp slt i32 %tmp2, %y		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp5, label %bb, label %bb7

bb7:		
	ret i32 %tmp2
}
