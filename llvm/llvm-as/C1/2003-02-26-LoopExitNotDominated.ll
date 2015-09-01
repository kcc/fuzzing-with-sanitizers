



define void @InitMoveArray() {
bb3:
	%X = alloca [2 x i64]		
	br i1 false, label %bb13, label %bb4
bb4:		
	%reg3011 = getelementptr [2 x i64], [2 x i64]* %X, i64 0, i64 0		
	br label %bb8
bb8:		
	store i64 0, i64* %reg3011
	br i1 false, label %bb8, label %bb13
bb13:		
	ret void
}

