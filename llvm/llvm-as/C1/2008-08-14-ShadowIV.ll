


target datalayout = "n8:16:32:64"


define void @foobar(i32 %n) nounwind {
entry:
	icmp eq i32 %n, 0		
	br i1 %0, label %return, label %bb.nph

bb.nph:		
	%umax = select i1 %0, i32 1, i32 %n		
	br label %bb

bb:		
	%i.03 = phi i32 [ 0, %bb.nph ], [ %indvar.next, %bb ]		
	tail call void @bar( i32 %i.03 ) nounwind
	uitofp i32 %i.03 to double		
	tail call void @foo( double %1 ) nounwind
	%indvar.next = add i32 %i.03, 1		
	%exitcond = icmp eq i32 %indvar.next, %umax		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}



define void @foobar2(i64 %n) nounwind {
entry:
	icmp eq i64 %n, 0		
	br i1 %0, label %return, label %bb.nph

bb.nph:		
	%umax = select i1 %0, i64 1, i64 %n		
	br label %bb

bb:		
	%i.03 = phi i64 [ 0, %bb.nph ], [ %indvar.next, %bb ]		
	trunc i64 %i.03 to i32		
	tail call void @bar( i32 %1 ) nounwind
	uitofp i64 %i.03 to double		
	tail call void @foo( double %2 ) nounwind
	%indvar.next = add i64 %i.03, 1		
	%exitcond = icmp eq i64 %indvar.next, %umax		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}


define void @foobar3() nounwind {
entry:
	tail call i32 (...) @nn( ) nounwind		
	icmp eq i32 %0, 0		
	br i1 %1, label %return, label %bb

bb:		
	%i.03 = phi i32 [ 0, %entry ], [ %3, %bb ]		
	tail call void @bar( i32 %i.03 ) nounwind
	uitofp i32 %i.03 to double		
	tail call void @foo( double %2 ) nounwind
	add i32 %i.03, 1		
	tail call i32 (...) @nn( ) nounwind		
	icmp ugt i32 %4, %3		
	br i1 %5, label %bb, label %return

return:		
	ret void
}


define void @foobar4() nounwind {
entry:
	br label %bb.nph

bb.nph:		
	br label %bb

bb:		
	%i.03 = phi i8 [ 0, %bb.nph ], [ %indvar.next, %bb ]		
	%tmp2 = sext i8 %i.03 to i32		
	tail call void @bar( i32 %tmp2 ) nounwind
	%tmp3 = uitofp i8 %i.03 to double		
	tail call void @foo( double %tmp3 ) nounwind
	%indvar.next = add i8 %i.03, 1		
        %tmp = sext i8 %indvar.next to i32
	%exitcond = icmp eq i32 %tmp, 32767		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}

declare void @bar(i32)

declare void @foo(double)

declare i32 @nn(...)

