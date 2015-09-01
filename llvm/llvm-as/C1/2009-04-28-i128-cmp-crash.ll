




define i32 @test(i128* %P) nounwind {
entry:
	%tmp48 = load i128, i128* %P
	%and49 = and i128 %tmp48, 18446744073709551616		
	%tobool = icmp ne i128 %and49, 0		
	br i1 %tobool, label %if.then50, label %if.end61

if.then50:		
	ret i32 1241

if.end61:		
	ret i32 123
}

define i32 @test2(i320* %P) nounwind {
entry:
	%tmp48 = load i320, i320* %P
	%and49 = and i320 %tmp48, 25108406941546723055343157692830665664409421777856138051584
	%tobool = icmp ne i320 %and49, 0		
	br i1 %tobool, label %if.then50, label %if.end61

if.then50:		
	ret i32 1241

if.end61:		
	ret i32 123
}
