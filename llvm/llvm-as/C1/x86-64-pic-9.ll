



define void ()* @g() nounwind {
entry:
	ret void ()* @f
}

define internal void @f() nounwind {
entry:
	ret void
}
