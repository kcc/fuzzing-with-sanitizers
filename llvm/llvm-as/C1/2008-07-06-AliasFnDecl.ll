




@b = alias void ()* @a

define void @a() nounwind  {
entry:
	br label %return

return:
	ret void
}
