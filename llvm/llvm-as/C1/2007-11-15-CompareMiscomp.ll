


define i1 @test(i32 %In) {
	%c1 = icmp sgt i32 %In, -1
	%c2 = icmp eq i32 %In, 1
	%V = and i1 %c1, %c2
	ret i1 %V
}

