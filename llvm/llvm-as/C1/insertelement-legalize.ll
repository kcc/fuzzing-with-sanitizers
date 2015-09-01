


define void @test(<2 x i64> %val, <2 x i64>* %dst, i64 %x) nounwind {
entry:
	%tmp4 = insertelement <2 x i64> %val, i64 %x, i32 0		
	%add = add <2 x i64> %tmp4, %val		
	store <2 x i64> %add, <2 x i64>* %dst
	ret void
}
