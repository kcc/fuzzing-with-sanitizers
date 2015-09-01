

@s = external constant i8		

define i8 @f() {
	%tmp = load i8, i8* @s		
	ret i8 %tmp
}
