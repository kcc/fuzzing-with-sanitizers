


@A = weak global [3000000 x i32] zeroinitializer		
@B = weak global [20000 x i32] zeroinitializer		
@C = weak global [100 x i32] zeroinitializer		
@Z = weak global i32 0		

define i32 @main() {
entry:
	tail call void @__main( )
	br label %loopentry.1
loopentry.1:		
	%indvar20 = phi i32 [ 0, %entry ], [ %indvar.next21, %loopexit.1 ]		
	%a.1 = phi i32* [ getelementptr ([3000000 x i32], [3000000 x i32]* @A, i32 0, i32 0), %entry ], [ %inc.0, %loopexit.1 ]		
	br label %no_exit.2
no_exit.2:		
	%a.0.4.ph = phi i32* [ %a.1, %loopentry.1 ], [ %inc.0, %loopexit.2 ], [ %a.0.4.ph, %no_exit.2 ]		
	%b.1.4.ph = phi i32* [ getelementptr ([20000 x i32], [20000 x i32]* @B, i32 0, i32 0), %loopentry.1 ], [ %inc.1, %loopexit.2 ], [ %b.1.4.ph, %no_exit.2 ]		
	%indvar17 = phi i32 [ 0, %loopentry.1 ], [ %indvar.next18, %loopexit.2 ], [ %indvar17, %no_exit.2 ]		
	%indvar = phi i32 [ %indvar.next, %no_exit.2 ], [ 0, %loopexit.2 ], [ 0, %loopentry.1 ]		
	%b.1.4.rec = bitcast i32 %indvar to i32		
	%gep.upgrd.1 = zext i32 %indvar to i64		
	%c.2.4 = getelementptr [100 x i32], [100 x i32]* @C, i32 0, i64 %gep.upgrd.1		
	%gep.upgrd.2 = zext i32 %indvar to i64		
	%a.0.4 = getelementptr i32, i32* %a.0.4.ph, i64 %gep.upgrd.2		
	%gep.upgrd.3 = zext i32 %indvar to i64		
	%b.1.4 = getelementptr i32, i32* %b.1.4.ph, i64 %gep.upgrd.3		
	%inc.0.rec = add i32 %b.1.4.rec, 1		
	%inc.0 = getelementptr i32, i32* %a.0.4.ph, i32 %inc.0.rec		
	%tmp.13 = load i32, i32* %a.0.4		
	%inc.1 = getelementptr i32, i32* %b.1.4.ph, i32 %inc.0.rec		
	%tmp.15 = load i32, i32* %b.1.4		
	%tmp.18 = load i32, i32* %c.2.4		
	%tmp.16 = mul i32 %tmp.15, %tmp.13		
	%tmp.19 = mul i32 %tmp.16, %tmp.18		
	%tmp.20 = load i32, i32* @Z		
	%tmp.21 = add i32 %tmp.19, %tmp.20		
	store i32 %tmp.21, i32* @Z
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp eq i32 %indvar.next, 100		
	br i1 %exitcond, label %loopexit.2, label %no_exit.2
loopexit.2:		
	%indvar.next18 = add i32 %indvar17, 1		
	%exitcond19 = icmp eq i32 %indvar.next18, 200		
	br i1 %exitcond19, label %loopexit.1, label %no_exit.2
loopexit.1:		
	%indvar.next21 = add i32 %indvar20, 1		
	%exitcond22 = icmp eq i32 %indvar.next21, 300		
	br i1 %exitcond22, label %return, label %loopentry.1
return:		
	ret i32 undef
}

declare void @__main()
