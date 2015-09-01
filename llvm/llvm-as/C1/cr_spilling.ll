


@.str242 = external constant [3 x i8]		

define fastcc void @ParseContent(i8* %buf, i32 %bufsize) {
entry:
	%items = alloca [10000 x i8*], align 16		
	%tmp86 = add i32 0, -1		
	br i1 false, label %cond_true94, label %cond_next99

cond_true94:		
	%tmp98 = call i32 (i8*, ...) @printf(i8* getelementptr ([3 x i8], [3 x i8]* @.str242, i32 0, i32 0), i8* null)		
	%tmp20971 = icmp sgt i32 %tmp86, 0		
	br i1 %tmp20971, label %bb101, label %bb212

cond_next99:		
	ret void

bb101:		
	ret void

bb212:		
	ret void
}

declare i32 @printf(i8*, ...)
