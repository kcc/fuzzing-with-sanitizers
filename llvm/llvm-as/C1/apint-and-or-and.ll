















define i17 @test1(i17 %X, i17 %Y) {
	%A = and i17 %X, 7
	%B = and i17 %Y, 8
	%C = or i17 %A, %B
	%D = and i17 %C, 7  
	ret i17 %D
}

define i49 @test3(i49 %X, i49 %Y) {
	%B = shl i49 %Y, 1
	%C = or i49 %X, %B
	%D = and i49 %C, 1  
	ret i49 %D
}

define i67 @test4(i67 %X, i67 %Y) {
	%B = lshr i67 %Y, 66
	%C = or i67 %X, %B
	%D = and i67 %C, 2  
	ret i67 %D
}

define i231 @or_test1(i231 %X, i231 %Y) {
	%A = and i231 %X, 1
	%B = or i231 %A, 1     
	ret i231 %B
}

define i7 @or_test2(i7 %X, i7 %Y) {
	%A = shl i7 %X, 6
	%B = or i7 %A, 64     
	ret i7 %B
}

