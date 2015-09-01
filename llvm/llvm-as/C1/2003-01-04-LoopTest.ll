

define i32 @main() {
	call i32 @mylog( i32 4 )		
	ret i32 0
}

define internal i32 @mylog(i32 %num) {
bb0:
	br label %bb2
bb2:		
	%reg112 = phi i32 [ 10, %bb2 ], [ 1, %bb0 ]		
	%cann-indvar = phi i32 [ %cann-indvar, %bb2 ], [ 0, %bb0 ]		
	%reg114 = add i32 %reg112, 1		
	%cond222 = icmp slt i32 %reg114, %num		
	br i1 %cond222, label %bb2, label %bb3
bb3:		
	ret i32 %reg114
}

