

define i26 @test(i26 %a) nounwind  {
entry:
	%_add = mul i26 %a, 2885		
	%_shl2 = mul i26 %a, 2884		
	%_sub = sub i26 %_add, %_shl2		
	ret i26 %_sub
}
