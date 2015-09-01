







define i32 @main(i32 %argc) {

	br label %bb5
bb5:		
	%I = phi i32 [ 0, %0 ], [ %I2, %bb5 ]		
	%I2 = add i32 %I, 1		
	%c = icmp eq i32 %I2, 10		
	br i1 %c, label %bb5, label %bb8
bb8:		
	%cann-indvar = phi i32 [ 0, %bb8 ], [ 0, %bb5 ]		
	%X = add i32 %argc, %argc		
	br i1 false, label %bb8, label %bb10
bb10:		
	ret i32 %X
}

