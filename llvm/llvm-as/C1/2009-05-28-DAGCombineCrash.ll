

define fastcc void @S_next_symbol(i448* %P) nounwind ssp {
entry:
	br label %bb14

bb14:		
	%srcval16 = load i448, i448* %P, align 8		
	%tmp = zext i32 undef to i448		
	%tmp15 = shl i448 %tmp, 288		
	%mask = and i448 %srcval16, -2135987035423586845985235064014169866455883682256196619149693890381755748887481053010428711403521		
	%ins = or i448 %tmp15, %mask		
	store i448 %ins, i448* %P, align 8
	ret void
}
