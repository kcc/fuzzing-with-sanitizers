
















define i32 @main() {
entry:
	%mem_tmp.0 = alloca i32		
	%mem_tmp.1 = alloca i32		
	store i32 0, i32* %mem_tmp.0
	store i32 1, i32* %mem_tmp.1
	%tmp.1.i = load i32, i32* %mem_tmp.1		
	%tmp.3.i = load i32, i32* %mem_tmp.0		
	%tmp.4.i = icmp sle i32 %tmp.1.i, %tmp.3.i		
	br i1 %tmp.4.i, label %cond_true.i, label %cond_continue.i
cond_true.i:		
	br label %cond_continue.i
cond_continue.i:		
	%mem_tmp.i.0 = phi i32* [ %mem_tmp.1, %cond_true.i ], [ %mem_tmp.0, %entry ]		
	%tmp.3 = load i32, i32* %mem_tmp.i.0		
	ret i32 %tmp.3
}
