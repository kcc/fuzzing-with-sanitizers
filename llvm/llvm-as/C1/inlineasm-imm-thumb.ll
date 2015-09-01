


define i32 @testI(i32 %x) {
	%y = call i32 asm "add $0, $1, $2", "=r,r,I"( i32 %x, i32 255 ) nounwind
	ret i32 %y
}


define void @testJ() {
	tail call void asm sideeffect ".word $0", "J"( i32 -255 ) nounwind
	ret void
}


define void @testK() {
	tail call void asm sideeffect ".word $0", "K"( i32 65280 ) nounwind
	ret void
}


define i32 @testL(i32 %x) {
	%y = call i32 asm "add $0, $1, $2", "=r,r,L"( i32 %x, i32 -7 ) nounwind
	ret i32 %y
}


define i32 @testM() {
	%y = call i32 asm "add $0, sp, $1", "=r,M"( i32 1020 ) nounwind
	ret i32 %y
}


define i32 @testN(i32 %x) {
	%y = call i32 asm "lsl $0, $1, $2", "=r,r,N"( i32 %x, i32 31 ) nounwind
	ret i32 %y
}


define void @testO() {
	tail call void asm sideeffect "add sp, sp, $0
        ret void
}
