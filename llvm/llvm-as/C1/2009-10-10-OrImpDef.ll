

define void @foo() nounwind {
entry:
	%r = alloca i8		
	%"alloca point" = bitcast i32 0 to i32		
	load volatile i8, i8* %r, align 1		
	or i8 %0, 1		
	store volatile i8 %1, i8* %r, align 1
	br label %return

return:		
	ret void
}
