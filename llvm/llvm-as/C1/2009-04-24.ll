





@i = thread_local global i32 15

define i32 @f() {
entry:
	%tmp1 = load i32, i32* @i
	ret i32 %tmp1
}
