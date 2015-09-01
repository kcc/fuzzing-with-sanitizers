


define void @__mulxc3(x86_fp80 %b) nounwind {
entry:
	%call = call x86_fp80 @y(x86_fp80* null, x86_fp80* null)		
	%cmp = fcmp ord x86_fp80 %b, 0xK00000000000000000000		
	%sub = fsub x86_fp80 %b, %b		
	%cmp7 = fcmp uno x86_fp80 %sub, 0xK00000000000000000000		
	%and12 = and i1 %cmp7, %cmp		
	%and = zext i1 %and12 to i32		
	%conv9 = sitofp i32 %and to x86_fp80		
	store x86_fp80 %conv9, x86_fp80* null
	store x86_fp80 %b, x86_fp80* null
	ret void
}

declare x86_fp80 @y(x86_fp80*, x86_fp80*)
