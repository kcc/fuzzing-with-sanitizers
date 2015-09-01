



@x = external global i32*		

define void @foo(i32 %a) {
entry:
	%tmp = load i32*, i32** @x		
	store i32 %a, i32* %tmp
	ret void
}

define i32 @t1(i32 %a, i32 %b) {






entry:
	%tmp1 = icmp sgt i32 %a, 10		
	br i1 %tmp1, label %cond_true, label %UnifiedReturnBlock

cond_true:		
	tail call void @foo( i32 %b )
	ret i32 0

UnifiedReturnBlock:		
	ret i32 1
}
