


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin8"

define void @foo(i32 %x) {
entry:
	%x_addr = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 %x, i32* %x_addr
	%tmp = load i32, i32* %x_addr, align 4		
	%tmp1 = ashr i32 %tmp, -2		
	%tmp2 = and i32 %tmp1, 1		
	%tmp23 = trunc i32 %tmp2 to i8		
	%toBool = icmp ne i8 %tmp23, 0		
	br i1 %toBool, label %bb, label %bb5

bb:		
	%tmp4 = call i32 (...) @bar( ) nounwind 		
	br label %bb5

bb5:		
	br label %return

return:		
	ret void
}

declare i32 @bar(...)
