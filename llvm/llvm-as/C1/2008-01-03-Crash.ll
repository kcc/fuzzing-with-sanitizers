


@indirect1 = internal global void (i32)* null		

declare void @indirectmarked(i32)

define i32 @main() {
entry:
	br i1 false, label %cond_next20.i, label %cond_true.i9

cond_true.i9:		
	ret i32 0

cond_next20.i:		
	store void (i32)* @indirectmarked, void (i32)** @indirect1, align 4
	br i1 false, label %cond_next21.i.i23.i, label %stack_restore

stack_restore:		
	ret i32 0

cond_next21.i.i23.i:		
	%tmp6.i4.i = load i32, i32* bitcast (void (i32)** @indirect1 to i32*), align 4		
	ret i32 0
}

