


define void @av_cmp_q_cond_true(i32* %retval, i32* %tmp9, i64* %tmp10) {
newFuncRoot:
	br label %cond_true

return.exitStub:		
	ret void

cond_true:		
	%tmp30 = load i64, i64* %tmp10		
	%.cast = zext i32 63 to i64		
	%tmp31 = ashr i64 %tmp30, %.cast		
	%tmp3132 = trunc i64 %tmp31 to i32		
	%tmp33 = or i32 %tmp3132, 1		
	store i32 %tmp33, i32* %tmp9
	%tmp34 = load i32, i32* %tmp9		
	store i32 %tmp34, i32* %retval
	br label %return.exitStub
}

