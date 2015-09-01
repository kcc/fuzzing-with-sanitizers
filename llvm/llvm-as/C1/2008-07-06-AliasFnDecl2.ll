


define void @c() nounwind  {
entry:
	call void @b( ) nounwind 
	br label %return

return:
	ret void
}

declare void @b()
