

define i1 @test1(i64 %poscnt, i32 %work) {
entry:


	%0 = lshr i64 %poscnt, 1
	%1 = icmp eq i64 %0, 0
	ret i1 %1
}

define i1 @test2(i64 %poscnt, i32 %work) {
entry:


	%0 = ashr i64 %poscnt, 1
	%1 = icmp eq i64 %0, 0
	ret i1 %1
}
