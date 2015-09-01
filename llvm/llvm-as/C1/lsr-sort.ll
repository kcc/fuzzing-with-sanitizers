



@X = common global i16 0		

define i32 @foo(i32 %N) nounwind {
entry:
	%0 = icmp sgt i32 %N, 0		
	br i1 %0, label %bb, label %return

bb:		
	%i.03 = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%1 = trunc i32 %i.03 to i16		
	store volatile i16 %1, i16* @X, align 2
	%indvar.next = add i32 %i.03, 1		
	%exitcond = icmp eq i32 %indvar.next, %N		
	br i1 %exitcond, label %return, label %bb

return:		
        %h = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]
	ret i32 %h
}
