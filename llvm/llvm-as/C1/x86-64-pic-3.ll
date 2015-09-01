






define void @g() {
entry:
	call void @f( )
	ret void
}

define internal void @f() {
entry:
	ret void
}
