

define internal void @f() {


	ret void
}

@a = alias void ()* @f

define void @g() {
	call void() @a()
	ret void
}

@b = internal alias  void ()* @g


define void @h() {
	call void() @b()

	ret void
}

