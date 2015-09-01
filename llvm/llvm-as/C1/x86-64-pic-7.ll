


define void ()* @g() nounwind {
entry:
	ret void ()* @f
}

declare void @f()
