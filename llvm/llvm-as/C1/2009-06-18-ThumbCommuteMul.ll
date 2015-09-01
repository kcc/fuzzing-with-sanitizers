

define i32 @a(i32 %x, i32 %y) nounwind readnone {
entry:
	%mul = mul i32 %y, %x		
	ret i32 %mul
}



