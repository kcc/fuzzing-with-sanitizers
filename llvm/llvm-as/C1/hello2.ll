

@X = global i32 7		
@msg = internal global [13 x i8] c"Hello World\0A\00"		

declare void @printf([13 x i8]*, ...)

define void @bar() {
	call void ([13 x i8]*, ...) @printf( [13 x i8]* @msg )
	ret void
}

define i32 @main() {
	call void @bar( )
	ret i32 0
}

