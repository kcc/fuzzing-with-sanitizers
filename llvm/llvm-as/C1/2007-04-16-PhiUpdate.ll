


define void @sal__math_float_manipulator_7__math__joint_array_dcv_ops__Omultiply__3([6 x float]* %agg.result) {
entry:
	%tmp282911 = zext i8 0 to i32		
	br label %cond_next
cond_next:		
	%indvar = phi i8 [ 0, %entry ], [ %indvar.next, %cond_next ]		
	%indvar.next = add i8 %indvar, 1		
	%exitcond = icmp eq i8 %indvar.next, 7		
	br i1 %exitcond, label %bb27, label %cond_next
bb27:		
	%tmp282911.lcssa = phi i32 [ %tmp282911, %cond_next ]		
	ret void
}

