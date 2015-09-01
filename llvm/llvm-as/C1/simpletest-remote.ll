

define i32 @bar() nounwind {
	ret i32 0
}

define i32 @main() nounwind {
	%r = call i32 @bar( )		
	ret i32 %r
}
