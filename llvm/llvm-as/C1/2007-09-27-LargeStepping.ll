




define i32 @f() {
entry:
	br label %bb5

bb:		
	%tmp2 = shl i32 %j.0, 1		
	%tmp4 = add i32 %i.0, 268435456		
	br label %bb5

bb5:		
	%j.0 = phi i32 [ 1, %entry ], [ %tmp2, %bb ]		
	%i.0 = phi i32 [ -1879048192, %entry ], [ %tmp4, %bb ]		
	%tmp7 = icmp slt i32 %i.0, 1610612736		
	br i1 %tmp7, label %bb, label %return

return:		
	ret i32 %j.0
}
