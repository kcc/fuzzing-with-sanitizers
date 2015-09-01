

define void @init_caller_save() {
entry:
	br label %cond_true78
cond_next20:		
	br label %bb31
bb31:		
	%iftmp.29.1 = phi i32 [ 0, %cond_next20 ], [ 0, %cond_true64 ], [ 0, %cond_true64 ]		
	br label %bb54
bb54:		
	br i1 false, label %bb75, label %cond_true64
cond_true64:		
	switch i32 %i.0.0, label %cond_next20 [
		 i32 17, label %bb31
		 i32 18, label %bb31
	]
bb75:		
	%tmp74.0 = add i32 %i.0.0, 1		
	br label %cond_true78
cond_true78:		
	%i.0.0 = phi i32 [ 0, %entry ], [ %tmp74.0, %bb75 ]		
	br label %bb54
}

