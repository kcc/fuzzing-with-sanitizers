

define i32 @f1(i32 %a, i32 %b) {
entry:


	%tmp2 = and i32 %b, %a		
	ret i32 %tmp2
}

define i32 @f2(i32 %a, i32 %b) {
entry:


	%tmp2 = or i32 %b, %a		
	ret i32 %tmp2
}

define i32 @f3(i32 %a, i32 %b) {
entry:


	%tmp2 = xor i32 %b, %a		
	ret i32 %tmp2
}

define i32 @f4(i32 %a, i32 %b) {
entry:


	%tmp3 = shl i32 %a, %b		
	ret i32 %tmp3
}

define i32 @f5(i32 %a, i32 %b) {
entry:


	%tmp3 = ashr i32 %a, %b		
	ret i32 %tmp3
}
