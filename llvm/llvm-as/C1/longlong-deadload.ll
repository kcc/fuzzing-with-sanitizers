


define void @test(i64* %P) nounwind  {




	%tmp1 = load i64, i64* %P, align 8		
	%tmp2 = xor i64 %tmp1, 1		
	store i64 %tmp2, i64* %P, align 8
	ret void
}

