

define i65 @foo(i65 %x) nounwind  {
entry:
	%tmp2 = ashr i65 %x, 65		
	ret i65 %tmp2
}
