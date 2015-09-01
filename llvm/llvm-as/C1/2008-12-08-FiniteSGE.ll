



define i32 @foo(i32 %x, i32 %y, i32* %lam, i32* %alp) nounwind {
bb1.thread:
	br label %bb1

bb1:		
	%indvar = phi i32 [ 0, %bb1.thread ], [ %indvar.next, %bb1 ]		
	%i.0.reg2mem.0 = sub i32 255, %indvar		
	%0 = getelementptr i32, i32* %alp, i32 %i.0.reg2mem.0		
	%1 = load i32, i32* %0, align 4		
	%2 = getelementptr i32, i32* %lam, i32 %i.0.reg2mem.0		
	store i32 %1, i32* %2, align 4
	%3 = sub i32 254, %indvar		
	%4 = icmp slt i32 %3, 0		
	%indvar.next = add i32 %indvar, 1		
	br i1 %4, label %bb2, label %bb1

bb2:		
	%tmp10 = mul i32 %indvar, %x		
	%z.0.reg2mem.0 = add i32 %tmp10, %y		
	%5 = add i32 %z.0.reg2mem.0, %x		
	ret i32 %5
}
