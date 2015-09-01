


@mode_table = global [4 x i32] zeroinitializer		



define i8 @f() {
entry:
	tail call i32 @fegetround( )		
	br label %bb

bb:		
	%mode.0 = phi i8 [ 0, %entry ], [ %indvar.next, %bb4 ]		
	zext i8 %mode.0 to i32		
	getelementptr [4 x i32], [4 x i32]* @mode_table, i32 0, i32 %1		
	load i32, i32* %2, align 4		
	icmp eq i32 %3, %0		
	br i1 %4, label %bb1, label %bb2

bb1:		
	ret i8 %mode.0

bb2:		
	icmp eq i8 %mode.0, 1		
	br i1 %5, label %bb5, label %bb4

bb4:		
	%indvar.next = add i8 %mode.0, 1		
	br label %bb

bb5:		
	tail call void @raise_exception( ) noreturn
	unreachable
}

declare i32 @fegetround()

declare void @raise_exception() noreturn







define i32 @foo(i8* %CurPtr, i32 %a) #0 {
entry:
  br label %for.cond

for.cond:					  
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %cmp = icmp ne i32 %i.0, %a
  br i1 %cmp, label %for.body, label %return

for.body:					  
  %idxprom = zext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8, i8* %CurPtr, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %CurPtr, i64 0
  %1 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br i1 %cmp3, label %return, label %for.inc

for.inc:					  
  %inc = add i32 %i.0, 1
  br label %for.cond

return:						  
  %retval.0 = phi i32 [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

attributes #0 = { nounwind uwtable }
