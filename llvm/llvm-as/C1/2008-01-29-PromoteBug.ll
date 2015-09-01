

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"
target triple = "i386-apple-darwin9.1.0"
	%struct.T = type <{ i8, [3 x i8] }>

define i8 @f() {
entry:
	%s = alloca [1 x %struct.T], align 4		
	%T3 = bitcast [1 x %struct.T]* %s to i32*
	store i32 -61184, i32* %T3

	%tmp16 = getelementptr [1 x %struct.T], [1 x %struct.T]* %s, i32 0, i32 0		
	%tmp17 = getelementptr %struct.T, %struct.T* %tmp16, i32 0, i32 1		
	%tmp1718 = bitcast [3 x i8]* %tmp17 to i32*		
	%tmp19 = load i32, i32* %tmp1718, align 4		
	%mask = and i32 %tmp19, 16777215		
	%mask2324 = trunc i32 %mask to i8		
	ret i8 %mask2324
}

