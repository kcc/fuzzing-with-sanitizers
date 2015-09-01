


define i32 @a(i32 %a) nounwind  {
entry:
	%tmp2 = sub i32 8, %a		
	%tmp3 = and i32 %tmp2, 7		
	ret i32 %tmp3
}
