


define void @g() {
entry:
	call void @f( )
	ret void
}

declare void @f()
