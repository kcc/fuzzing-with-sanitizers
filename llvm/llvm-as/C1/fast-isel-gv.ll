


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin10.0"
@f = global i8 (...)* @kill		

declare signext i8 @kill(...)

define i32 @main() nounwind ssp {
entry:
	%retval = alloca i32		
	%0 = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	%1 = load i8 (...)*, i8 (...)** @f, align 8		
	%2 = icmp ne i8 (...)* %1, @kill		
	%3 = zext i1 %2 to i32		
	store i32 %3, i32* %0, align 4
	%4 = load i32, i32* %0, align 4		
	store i32 %4, i32* %retval, align 4
	br label %return

return:		
	%retval1 = load i32, i32* %retval		
	ret i32 %retval1
}
