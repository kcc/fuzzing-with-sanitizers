








define void @foo(double* %D, double* %E, double %F) nounwind {
entry:
	%tmp.24 = icmp eq double* %D, %E		
	br i1 %tmp.24, label %return, label %no_exit
no_exit:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %no_exit ]		
	%D_addr.0.0.rec = bitcast i32 %indvar to i32		
	%D_addr.0.0 = getelementptr double, double* %D, i32 %D_addr.0.0.rec		
	%inc.rec = add i32 %D_addr.0.0.rec, 1		
	%inc = getelementptr double, double* %D, i32 %inc.rec		
	store double %F, double* %D_addr.0.0
	%tmp.2 = icmp eq double* %inc, %E		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp.2, label %return, label %no_exit
return:		
	ret void
}

