

define void @foo(i32 %X, i32 %Y) {
entry:


	%tmp1 = icmp ult i32 %X, 4		
	%tmp4 = icmp eq i32 %Y, 0		
	%tmp7 = or i1 %tmp4, %tmp1		
	br i1 %tmp7, label %cond_true, label %UnifiedReturnBlock

cond_true:		
	%tmp10 = call i32 (...) @bar( )		
	ret void

UnifiedReturnBlock:		
	ret void
}

declare i32 @bar(...)
