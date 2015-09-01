



define i32 @x(i32 %y) nounwind readnone {
entry:
	%tmp14 = zext i32 %y to i80		
	%tmp15 = bitcast i80 %tmp14 to x86_fp80		
	%add = fadd x86_fp80 %tmp15, 0xK3FFF8000000000000000		
	%tmp11 = bitcast x86_fp80 %add to i80		
	%tmp10 = trunc i80 %tmp11 to i32		
	ret i32 %tmp10
}

