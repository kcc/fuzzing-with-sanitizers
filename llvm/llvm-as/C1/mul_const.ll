


define i32 @t1(i32 %v) nounwind readnone {
entry:


	%0 = mul i32 %v, 9
	ret i32 %0
}

define i32 @t2(i32 %v) nounwind readnone {
entry:


	%0 = mul i32 %v, 7
	ret i32 %0
}
