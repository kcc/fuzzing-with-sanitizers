



define void @g() {
entry:
	call void @f( )
	ret void
}

declare hidden void @f()
