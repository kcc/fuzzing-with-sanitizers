

define i32 @"main"(i32 %argc) {
	br label %2

	%retval = phi i32 [ %argc, %2 ]		
	%two = add i32 %retval, %retval		
	ret i32 %two

	br label %1
}
