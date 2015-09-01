


define void @foo(float* nocapture %A, float* nocapture %B, float* nocapture %C, i32 %N) nounwind {










entry:
	%0 = icmp sgt i32 %N, 0		
	br i1 %0, label %bb, label %return

bb:		
	%i.03 = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%1 = getelementptr float, float* %A, i32 %i.03		
	%2 = load float, float* %1, align 4		
	%3 = getelementptr float, float* %B, i32 %i.03		
	%4 = load float, float* %3, align 4		
	%5 = fadd float %2, %4		
	%6 = getelementptr float, float* %C, i32 %i.03		
	store float %5, float* %6, align 4
	%7 = add i32 %i.03, 10		
	%8 = getelementptr float, float* %A, i32 %7		
	%9 = load float, float* %8, align 4		
	%10 = getelementptr float, float* %B, i32 %7		
	%11 = load float, float* %10, align 4		
	%12 = fadd float %9, %11		
	%13 = getelementptr float, float* %C, i32 %7		
	store float %12, float* %13, align 4
	%indvar.next = add i32 %i.03, 1		
	%exitcond = icmp eq i32 %indvar.next, %N		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}
