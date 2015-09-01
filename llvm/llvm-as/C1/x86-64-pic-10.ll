


@g = weak alias i32 ()* @f

define void @h() {
entry:
	%tmp31 = call i32 @g()
        ret void
}

define weak i32 @f() {
  ret i32 42
}
