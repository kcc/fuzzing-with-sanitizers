



define void ()* @g() {
entry:
	ret void ()* @f
}

declare hidden void @f()
