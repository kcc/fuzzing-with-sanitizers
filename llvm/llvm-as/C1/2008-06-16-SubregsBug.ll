

define i16 @test(i16* %tmp179) nounwind  {
	%tmp180 = load i16, i16* %tmp179, align 2		
	%tmp184 = and i16 %tmp180, -1024		
	%tmp186 = icmp eq i16 %tmp184, -32768		
	br i1 %tmp186, label %bb189, label %bb288

bb189:		
	ret i16 %tmp180

bb288:		
	ret i16 32
}
