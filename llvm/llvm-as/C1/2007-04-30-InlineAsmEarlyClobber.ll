








target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "powerpc-apple-darwin8.8.0"









define i64 @test(i32 %A, i32 %B, i32 %C) nounwind {
entry:
	%Y = alloca i32, align 4		
	%tmp4 = call i32 asm "subf${3:I}c $1,$4,$3\0A\09subfze $0,$2", "=r,=*&r,r,rI,r"( i32* %Y, i32 %A, i32 %B, i32 %C )		
	%tmp5 = load i32, i32* %Y		
	%tmp56 = zext i32 %tmp5 to i64		
	%tmp7 = shl i64 %tmp56, 32		
	%tmp89 = zext i32 %tmp4 to i64		
	%tmp10 = or i64 %tmp7, %tmp89		
	ret i64 %tmp10
}
