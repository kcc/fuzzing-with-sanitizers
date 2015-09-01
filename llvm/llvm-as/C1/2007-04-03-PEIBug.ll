

define i32 @foo() {
entry:
	%A = alloca [1123 x i32], align 16		
	%B = alloca [3123 x i32], align 16		
	%C = alloca [12312 x i32], align 16		
	%tmp = call i32 (...) @bar( [3123 x i32]* %B, [1123 x i32]* %A, [12312 x i32]* %C )		
	ret i32 undef
}

declare i32 @bar(...)



