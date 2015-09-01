


define i8 @test(i8* %A, i8* %B, i32 %L, i32 %Q, i32 %N.s) {
entry:
	%tmp.6 = mul i32 %Q, %L		
	%N = bitcast i32 %N.s to i32		
	br label %no_exit
no_exit:		
	%indvar.ui = phi i32 [ 0, %entry ], [ %indvar.next, %no_exit ]		
	%Sum.0.0 = phi i8 [ 0, %entry ], [ %tmp.21, %no_exit ]		
	%indvar = bitcast i32 %indvar.ui to i32		
	%N_addr.0.0 = sub i32 %N.s, %indvar		
	%tmp.8 = add i32 %N_addr.0.0, %tmp.6		
	%tmp.9 = getelementptr i8, i8* %A, i32 %tmp.8		
	%tmp.10 = load i8, i8* %tmp.9		
	%tmp.17 = getelementptr i8, i8* %B, i32 %tmp.8		
	%tmp.18 = load i8, i8* %tmp.17		
	%tmp.19 = sub i8 %tmp.10, %tmp.18		
	%tmp.21 = add i8 %tmp.19, %Sum.0.0		
	%indvar.next = add i32 %indvar.ui, 1		
	%exitcond = icmp eq i32 %indvar.next, %N		
	br i1 %exitcond, label %loopexit, label %no_exit
loopexit:		
	ret i8 %tmp.21
}

