




define i32 @f(i32 %a, i32 %b, i32 %x, i32 %y) {
entry:
	%tmp3 = icmp eq i32 %a, %b		
	br i1 %tmp3, label %return, label %bb

bb:		
	%x_addr.0 = phi i32 [ %tmp6, %bb ], [ %x, %entry ]		
	%tmp6 = add i32 %x_addr.0, 1		
	%tmp9 = icmp slt i32 %tmp6, %y		
	br i1 %tmp9, label %bb, label %return

return:		
	%x_addr.1 = phi i32 [ %x, %entry ], [ %tmp6, %bb ]		
	ret i32 %x_addr.1
}
