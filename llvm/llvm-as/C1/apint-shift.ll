





define i47 @test1(i47 %A) {
	%B = shl i47 %A, 0		
	ret i47 %B
}



define i41 @test2(i7 %X) {
	%A = zext i7 %X to i41		
	%B = shl i41 0, %A		
	ret i41 %B
}



define i41 @test3(i41 %A) {
	%B = ashr i41 %A, 0		
	ret i41 %B
}



define i39 @test4(i7 %X) {
	%A = zext i7 %X to i39		
	%B = ashr i39 0, %A		
	ret i39 %B
}



define i55 @test5(i55 %A) {
	%B = lshr i55 %A, 55		
	ret i55 %B
}



define i32 @test5a(i32 %A) {
	%B = shl i32 %A, 32		
	ret i32 %B
}



define i55 @test6(i55 %A) {
	%B = shl i55 %A, 1		
	%C = mul i55 %B, 3		
	ret i55 %C
}



define i55 @test6a(i55 %A) {
	%B = mul i55 %A, 3		
	%C = shl i55 %B, 1		
	ret i55 %C
}



define i29 @test7(i8 %X) {
	%A = zext i8 %X to i29		
	%B = ashr i29 -1, %A		
	ret i29 %B
}



define i7 @test8(i7 %A) {
	%B = shl i7 %A, 4		
	%C = shl i7 %B, 3		
	ret i7 %C
}



define i17 @test9(i17 %A) {
	%B = shl i17 %A, 16		
	%C = lshr i17 %B, 16		
	ret i17 %C
}



define i19 @test10(i19 %A) {
	%B = lshr i19 %A, 18		
	%C = shl i19 %B, 18		
	ret i19 %C
}




define i23 @test11(i23 %A) {
	%a = mul i23 %A, 3		
	%B = lshr i23 %a, 11		
	%C = shl i23 %B, 12		
	ret i23 %C
}



define i47 @test12(i47 %A) {
	%B = ashr i47 %A, 8		
	%C = shl i47 %B, 8		
	ret i47 %C
}




define i18 @test13(i18 %A) {
	%a = mul i18 %A, 3		
	%B = ashr i18 %a, 8		
	%C = shl i18 %B, 9		
	ret i18 %C
}



define i35 @test14(i35 %A) {
	%B = lshr i35 %A, 4		
	%C = or i35 %B, 1234		
	%D = shl i35 %C, 4		
	ret i35 %D
}



define i79 @test14a(i79 %A) {
	%B = shl i79 %A, 4		
	%C = and i79 %B, 1234		
	%D = lshr i79 %C, 4		
	ret i79 %D
}



define i45 @test15(i1 %C) {
	%A = select i1 %C, i45 3, i45 1	
	%V = shl i45 %A, 2		
	ret i45 %V
}



define i53 @test15a(i1 %X) {
	%A = select i1 %X, i8 3, i8 1	
	%B = zext i8 %A to i53		
	%V = shl i53 64, %B		
	ret i53 %V
}



define i1 @test16(i84 %X) {
	%tmp.3 = ashr i84 %X, 4		
	%tmp.6 = and i84 %tmp.3, 1	
	%tmp.7 = icmp ne i84 %tmp.6, 0	
	ret i1 %tmp.7
}



define i1 @test17(i106 %A) {
	%B = lshr i106 %A, 3		
	%C = icmp eq i106 %B, 1234	
	ret i1 %C
}



define i1 @test18(i11 %A) {
	%B = lshr i11 %A, 10		
	%C = icmp eq i11 %B, 123	
	ret i1 %C
}



define i1 @test19(i37 %A) {
	%B = ashr i37 %A, 2		
	%C = icmp eq i37 %B, 0		
	ret i1 %C
}



define i1 @test19a(i39 %A) {
	%B = ashr i39 %A, 2		
	%C = icmp eq i39 %B, -1		
	ret i1 %C
}



define i1 @test20(i13 %A) {
	%B = ashr i13 %A, 12		
	%C = icmp eq i13 %B, 123	
	ret i1 %C
}



define i1 @test21(i12 %A) {
	%B = shl i12 %A, 6		
	%C = icmp eq i12 %B, -128		
	ret i1 %C
}



define i1 @test22(i14 %A) {
	%B = shl i14 %A, 7		
	%C = icmp eq i14 %B, 0		
	ret i1 %C
}



define i11 @test23(i44 %A) {
	%B = shl i44 %A, 33		
	%C = ashr i44 %B, 33		
	%D = trunc i44 %C to i11	
	ret i11 %D
}



define i37 @test25(i37 %tmp.2, i37 %AA) {
	%x = lshr i37 %AA, 17		
	%tmp.3 = lshr i37 %tmp.2, 17		
	%tmp.5 = add i37 %tmp.3, %x		
	%tmp.6 = shl i37 %tmp.5, 17		
	ret i37 %tmp.6
}



define i40 @test26(i40 %A) {
	%B = lshr i40 %A, 1		
	%C = bitcast i40 %B to i40		
	%D = shl i40 %C, 1		
	ret i40 %D
}
