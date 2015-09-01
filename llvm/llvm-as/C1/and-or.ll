



define i32 @func1(i32 %a, i32 %b) nounwind readnone {
entry:
	%0 = or i32 %b, %a		
	%1 = and i32 %0, 1		
	%2 = and i32 %b, -2		
	%3 = or i32 %1, %2		
	ret i32 %3
}

define i32 @func2(i32 %a, i32 %b) nounwind readnone {
entry:
	%0 = or i32 %a, %b		
	%1 = and i32 1, %0		
	%2 = and i32 -2, %b		
	%3 = or i32 %1, %2		
	ret i32 %3
}

define i32 @func3(i32 %a, i32 %b) nounwind readnone {
entry:
	%0 = or i32 %b, %a		
	%1 = and i32 %0, 1		
	%2 = and i32 %b, -2		
	%3 = or i32 %2, %1		
	ret i32 %3
}

define i32 @func4(i32 %a, i32 %b) nounwind readnone {
entry:
	%0 = or i32 %a, %b		
	%1 = and i32 1, %0		
	%2 = and i32 -2, %b		
	%3 = or i32 %2, %1		
	ret i32 %3
}
