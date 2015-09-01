



define i1 @test1(i1 %A) {
	%B = zext i1 %A to i32
	%C = icmp slt i32 %B, 1
	ret i1 %C
}


define i1 @test2(i1 zeroext  %b) {
entry:
	%cmptmp = icmp slt i1 %b, true		
	ret i1 %cmptmp
}

