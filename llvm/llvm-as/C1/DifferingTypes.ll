




target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"

define i32 @testfunc(i32 %i, i8 %j) {
	%I = alloca i32		
	store i32 %i, i32* %I
	%P = bitcast i32* %I to i8*		
	store i8 %j, i8* %P
	%t = load i32, i32* %I		
	ret i32 %t
}

