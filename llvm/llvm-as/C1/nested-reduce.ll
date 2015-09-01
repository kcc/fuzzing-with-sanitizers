


target datalayout = "n8:16:32:64"



define i32 @foo(i32 %A, i32 %B, i32 %C, i32 %D) {
entry:
	%tmp.5 = icmp sgt i32 %C, 0		
	%tmp.25 = and i32 %A, 1		
	br label %loopentry.1
loopentry.1:		
	%indvar20 = phi i32 [ 0, %entry ], [ %indvar.next21, %loopexit.1 ]		
	%k.1 = phi i32 [ 0, %entry ], [ %k.1.3, %loopexit.1 ]		
	br i1 %tmp.5, label %no_exit.1.preheader, label %loopexit.1
no_exit.1.preheader:		
	%i.0.0 = bitcast i32 %indvar20 to i32		
	%tmp.9 = mul i32 %i.0.0, 6		
	br label %no_exit.1.outer
no_exit.1.outer:		
	%k.1.2.ph = phi i32 [ %k.1, %no_exit.1.preheader ], [ %k.09, %cond_true ]		
	%j.1.2.ph = phi i32 [ 0, %no_exit.1.preheader ], [ %inc.1, %cond_true ]		
	br label %no_exit.1
no_exit.1:		
	%indvar.ui = phi i32 [ 0, %no_exit.1.outer ], [ %indvar.next, %cond_continue ]		
	%indvar = bitcast i32 %indvar.ui to i32		
	%j.1.2 = add i32 %indvar, %j.1.2.ph		
	%tmp.11 = add i32 %j.1.2, %tmp.9		
	%tmp.12 = trunc i32 %tmp.11 to i8		
	%shift.upgrd.1 = zext i8 %tmp.12 to i32		
	%tmp.13 = shl i32 %D, %shift.upgrd.1		
	%tmp.15 = icmp eq i32 %tmp.13, %B		
	%inc.1 = add i32 %j.1.2, 1		
	br i1 %tmp.15, label %cond_true, label %cond_continue
cond_true:		
	%tmp.26 = and i32 %tmp.25, %tmp.13		
	%k.09 = add i32 %tmp.26, %k.1.2.ph		
	%tmp.517 = icmp slt i32 %inc.1, %C		
	br i1 %tmp.517, label %no_exit.1.outer, label %loopexit.1
cond_continue:		
	%tmp.519 = icmp slt i32 %inc.1, %C		
	%indvar.next = add i32 %indvar.ui, 1		
	br i1 %tmp.519, label %no_exit.1, label %loopexit.1
loopexit.1:		
	%k.1.3 = phi i32 [ %k.1, %loopentry.1 ], [ %k.09, %cond_true ], [ %k.1.2.ph, %cond_continue ]		
	%indvar.next21 = add i32 %indvar20, 1		
	%exitcond = icmp eq i32 %indvar.next21, 4		
	br i1 %exitcond, label %loopexit.0, label %loopentry.1
loopexit.0:		
	ret i32 %k.1.3
}
