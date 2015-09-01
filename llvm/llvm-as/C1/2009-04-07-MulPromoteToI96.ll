





define i96 @test(i96 %a.4, i96 %b.2) {
	%tmp1086 = trunc i96 %a.4 to i64		
	%tmp836 = trunc i96 %b.2 to i64		
	%mul185 = mul i64 %tmp1086, %tmp836		
	%tmp544 = zext i64 %mul185 to i96		
	ret i96 %tmp544
}
