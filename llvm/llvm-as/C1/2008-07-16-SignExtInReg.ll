



define signext i8 @A(i8 %e.0, i8 signext %sum)  nounwind {
entry:

	add i8 %sum, %e.0		
	ret i8 %0
}

define signext i16 @B(i16 %e.0, i16 signext %sum) nounwind {
entry:

	add i16 %sum, %e.0		
	ret i16 %0
}

