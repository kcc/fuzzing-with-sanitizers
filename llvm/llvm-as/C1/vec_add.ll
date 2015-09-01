

define <2 x i64> @test(<2 x i64> %a, <2 x i64> %b) {
entry:
	%tmp9 = add <2 x i64> %b, %a		
	ret <2 x i64> %tmp9
}
