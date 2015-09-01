

global i32 0


private global i32 0


define i32* @2() {
	ret i32* @0
}


define i32* @f() {
entry:
	call i32* @2()
	ret i32* %0
}

define i32* @g() {
entry:
	ret i32* @1
}
