


define i32 @atomic_cmpset_long(i64* %dst, i64 %exp, i64 %src) nounwind ssp noredzone noimplicitfloat {
entry:
	%0 = call i8 asm sideeffect "\09lock 
	br label %1


	ret i32 undef
}
