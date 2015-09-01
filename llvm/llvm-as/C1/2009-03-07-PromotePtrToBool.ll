
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin7"
@X = internal global i32* null		
@Y = internal global i32 0		

define void @foo() nounwind {
entry:
	store i32* @Y, i32** @X, align 4
	ret void
}

define i32* @get() nounwind {
entry:
	%0 = load i32*, i32** @X, align 4		
	ret i32* %0
}
