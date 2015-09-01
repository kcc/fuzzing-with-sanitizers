













define i32 @main() nounwind {
entry:
	%0 = call i32 inttoptr (i32 12345678 to i32 (i32)*)(i32 0) nounwind		
	ret i32 %0
}






