


define i32 @testI(i32 %x) {
	%y = call i32 asm "add $0, $1, $2", "=r,r,I"( i32 %x, i32 65280 ) nounwind
	ret i32 %y
}


define void @testJ() {
	tail call void asm sideeffect ".word $0", "J"( i32 4080 ) nounwind
	ret void
}


define void @testK() {
	tail call void asm sideeffect ".word $0", "K"( i32 16777215 ) nounwind
	ret void
}


define void @testL() {
	tail call void asm sideeffect ".word $0", "L"( i32 -65280 ) nounwind
	ret void
}


define i32 @testM(i32 %x) {
	%y = call i32 asm "lsl $0, $1, $2", "=r,r,M"( i32 %x, i32 31 ) nounwind
	ret i32 %y
}
