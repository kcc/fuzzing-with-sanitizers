


define i32 @t(i32 %X) nounwind {


entry:
	%0 = or i32 %X, -65536
	ret i32 %0
}

define i32 @t2(i32 %X) nounwind {


entry:
	%0 = or i32 %X, -131072
	%1 = and i32 %0, -65537
	ret i32 %1
}
