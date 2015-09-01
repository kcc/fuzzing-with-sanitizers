


@g_53 = external global i32		

define i32 @foo() nounwind {
bb5.thread:
	br label %bb

bb:		
	%indvar = phi i32 [ 0, %bb5.thread ], [ %indvar.next, %bb5 ]		
	br i1 false, label %bb5, label %bb1

bb1:		
	%l_2.0.reg2mem.0 = sub i32 0, %indvar		
	%0 = load volatile i32, i32* @g_53, align 4		
	%1 = trunc i32 %l_2.0.reg2mem.0 to i16		
	%2 = trunc i32 %0 to i16		
	%3 = mul i16 %2, %1		
	%4 = icmp eq i16 %3, 0		
	br i1 %4, label %bb7, label %bb2

bb2:		
	br label %bb2

bb5:		
	%indvar.next = add i32 %indvar, 1		
	br label %bb

bb7:		
	ret i32 1
}
