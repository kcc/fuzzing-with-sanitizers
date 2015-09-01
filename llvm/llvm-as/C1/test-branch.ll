


define i32 @main() {
	br label %Test
Test:		
	%X = icmp eq i32 0, 4		
	br i1 %X, label %Test, label %Label
Label:		
	ret i32 0
}

