







define i23 @test1(i23 %A) {
	%B = sub i23 %A, %A		
	ret i23 %B
}

define i47 @test2(i47 %A) {
	%B = sub i47 %A, 0		
	ret i47 %B
}

define i97 @test3(i97 %A) {
	%B = sub i97 0, %A		
	%C = sub i97 0, %B		
	ret i97 %C
}

define i108 @test4(i108 %A, i108 %x) {
	%B = sub i108 0, %A		
	%C = sub i108 %x, %B		
	ret i108 %C
}

define i19 @test5(i19 %A, i19 %Bok, i19 %Cok) {
	%D = sub i19 %Bok, %Cok		
	%E = sub i19 %A, %D		
	ret i19 %E
}

define i57 @test6(i57 %A, i57 %B) {
	%C = and i57 %A, %B		
	%D = sub i57 %A, %C		
	ret i57 %D
}

define i77 @test7(i77 %A) {
	%B = sub i77 -1, %A		
	ret i77 %B
}

define i27 @test8(i27 %A) {
	%B = mul i27 9, %A		
	%C = sub i27 %B, %A		
	ret i27 %C
}

define i42 @test9(i42 %A) {
	%B = mul i42 3, %A		
	%C = sub i42 %A, %B		
	ret i42 %C
}

define i124 @test10(i124 %A, i124 %B) {
	%C = sub i124 0, %A		
	%D = sub i124 0, %B		
	%E = mul i124 %C, %D		
	ret i124 %E
}

define i55 @test10a(i55 %A) {
	%C = sub i55 0, %A		
	%E = mul i55 %C, 7		
	ret i55 %E
}

define i1 @test11(i9 %A, i9 %B) {
	%C = sub i9 %A, %B		
	%cD = icmp ne i9 %C, 0		
	ret i1 %cD
}

define i43 @test12(i43 %A) {
	%B = ashr i43 %A, 42		
	%C = sub i43 0, %B		
	ret i43 %C
}

define i79 @test13(i79 %A) {
	%B = lshr i79 %A, 78		
	%C = sub i79 0, %B		
	ret i79 %C
}

define i1024 @test14(i1024 %A) {
	%B = lshr i1024 %A, 1023        
	%C = bitcast i1024 %B to i1024	
	%D = sub i1024 0, %C		
	ret i1024 %D
}

define i51 @test16(i51 %A) {
	%X = sdiv i51 %A, 1123		
	%Y = sub i51 0, %X		
	ret i51 %Y
}



define i25 @test17(i25 %Aok) {
	%B = sub i25 0, %Aok		
	%C = sdiv i25 %B, 1234		
	ret i25 %C
}

define i128 @test18(i128 %Y) {
	%tmp.4 = shl i128 %Y, 2		
	%tmp.12 = shl i128 %Y, 2	
	%tmp.8 = sub i128 %tmp.4, %tmp.12	
	ret i128 %tmp.8
}

define i39 @test19(i39 %X, i39 %Y) {
	%Z = sub i39 %X, %Y		
	%Q = add i39 %Z, %Y		
	ret i39 %Q
}

define i1 @test20(i33 %g, i33 %h) {
	%tmp.2 = sub i33 %g, %h		
	%tmp.4 = icmp ne i33 %tmp.2, %g		
	ret i1 %tmp.4
}

define i1 @test21(i256 %g, i256 %h) {
	%tmp.2 = sub i256 %g, %h	
	%tmp.4 = icmp ne i256 %tmp.2, %g
	ret i1 %tmp.4
}
