

define i32 @f() nounwind  {
	tail call void @t( i32 1 ) nounwind 
	ret i32 0
}

declare void @t(i32)
