



@a = hidden global i32 0

define i32 @get_a() {
entry:
	%tmp1 = load i32, i32* @a, align 4
	ret i32 %tmp1
}
