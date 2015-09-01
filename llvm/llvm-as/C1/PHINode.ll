




define i32 @main(i32 %argc) {


	br label %InlinedFunctionReturnNode
InlinedFunctionReturnNode:		
	%X = phi i32 [ 7, %0 ]		
	%Y = add i32 %X, %argc		
	ret i32 %Y
}

