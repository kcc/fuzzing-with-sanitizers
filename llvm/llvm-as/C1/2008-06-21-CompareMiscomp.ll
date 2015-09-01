



define i1 @test(i32 %In) {
	%c1 = icmp ugt i32 %In, 13
	%c2 = icmp eq i32 %In, 15
	%V = and i1 %c1, %c2
	ret i1 %V
}

