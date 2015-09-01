

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-s0:0:64-f80:32:32"
target triple = "i686-pc-linux-gnu"

declare void @BZALLOC(i32)

define void @f(i32) {
entry:
	%blockSize100k = alloca i32		
	store i32 %0, i32* %blockSize100k
	%n = alloca i32		
	load i32, i32* %blockSize100k		
	store i32 %1, i32* %n
	load i32, i32* %n		
	add i32 %2, 2		
	mul i32 %3, ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32)		
	call void @BZALLOC( i32 %4 )
	br label %return

return:		
	ret void
}
