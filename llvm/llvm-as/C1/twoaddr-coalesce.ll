


@"\01LC" = internal constant [4 x i8] c"%d\0A\00"		

define i32 @foo() nounwind {
bb1.thread:
	br label %bb1

bb1:		
	%i.0.reg2mem.0 = phi i32 [ 0, %bb1.thread ], [ %indvar.next, %bb1 ]		
	%0 = trunc i32 %i.0.reg2mem.0 to i8		
	%1 = sdiv i8 %0, 2		
	%2 = sext i8 %1 to i32		
	%3 = tail call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @"\01LC", i32 0, i32 0), i32 %2) nounwind		
	%indvar.next = add i32 %i.0.reg2mem.0, 1		
	%exitcond = icmp eq i32 %indvar.next, 258		
	br i1 %exitcond, label %bb2, label %bb1

bb2:		
	ret i32 0
}

declare i32 @printf(i8*, ...) nounwind
