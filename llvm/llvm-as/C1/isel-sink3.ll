







target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin7"

define i32 @bar(i32** %P) nounwind {
entry:
	%0 = load i32*, i32** %P, align 4		
	%1 = getelementptr i32, i32* %0, i32 1		
	%2 = icmp ugt i32* %1, inttoptr (i64 1233 to i32*)		
	br i1 %2, label %bb1, label %bb

bb:		
	store i32* inttoptr (i64 123 to i32*), i32** %P, align 4
	br label %bb1

bb1:		
	%3 = getelementptr i32, i32* %1, i32 1		
	%4 = load i32, i32* %3, align 4		
	ret i32 %4
}
