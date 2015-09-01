

define i64 @test1(i64 %x) nounwind  {
entry:
	%tmp2 = lshr i64 %x, 55		
	%tmp4 = shl i64 %x, 9		
	%tmp5 = or i64 %tmp2, %tmp4		
	ret i64 %tmp5
}

define i64 @test2(i32 %x) nounwind  {
entry:
	%tmp2 = lshr i32 %x, 22		
	%tmp4 = shl i32 %x, 10		
	%tmp5 = or i32 %tmp2, %tmp4		
	%tmp56 = zext i32 %tmp5 to i64		
	ret i64 %tmp56
}

