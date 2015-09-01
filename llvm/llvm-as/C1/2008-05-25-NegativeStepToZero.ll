




define i32 @func_6() nounwind  {
entry:
	br label %bb5

bb:		
	%tmp2 = add i32 %i.0, 1		
	%tmp4 = add i8 %x.0, -4		
	br label %bb5

bb5:		
	%x.0 = phi i8 [ 0, %entry ], [ %tmp4, %bb ]		
	%i.0 = phi i32 [ 0, %entry ], [ %tmp2, %bb ]		
	%tmp7 = icmp eq i8 %x.0, 12		
	br i1 %tmp7, label %return, label %bb

return:		
	ret i32 %i.0
}
