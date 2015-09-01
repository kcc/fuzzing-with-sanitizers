








define i32 @test1(i32 %X, i32 %Y) {
entry:
	%tmp = trunc i32 %Y to i8		
	%tmp1 = shl i32 %X, %Y		
	%tmp2 = sub i32 32, %Y		
	%tmp3 = lshr i32 %X, %tmp2		
	%tmp4 = or i32 %tmp1, %tmp3		
	%tmp6 = and i32 %tmp4, 127		
	ret i32 %tmp6
}

define i32 @test2(i32 %X) {
entry:
	%tmp1 = lshr i32 %X, 27		
	%tmp2 = shl i32 %X, 5		
	%tmp2.masked = and i32 %tmp2, 96		
	%tmp5 = or i32 %tmp1, %tmp2.masked		
	ret i32 %tmp5
}
