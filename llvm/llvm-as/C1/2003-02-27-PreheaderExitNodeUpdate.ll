




define i32 @main(i32 %argc, i8** %argv) {
bb0:
	br i1 false, label %bb7, label %bb5
bb5:		
	br i1 false, label %bb5, label %bb7
bb7:		
	br i1 false, label %bb7, label %bb10
bb10:		
	ret i32 0
}

