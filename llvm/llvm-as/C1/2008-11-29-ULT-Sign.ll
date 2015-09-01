
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i686-pc-linux-gnu"

define i32 @a(i32 %x) nounwind {
entry:
	%cmp = icmp ult i32 %x, -2147483648		
	br i1 %cmp, label %if.end, label %if.then

if.then:		
	%call = call i32 (...) @b()		
	br label %if.end

if.end:		
	br label %return

return:		
	ret i32 undef
}

declare i32 @b(...)

