


define i32 @__fixunssfsi(float %a) nounwind readnone {
entry:
	%0 = fcmp ult float %a, 0x41E0000000000000		
	br i1 %0, label %bb1, label %bb

bb:		
	ret i32 1

bb1:		
	ret i32 0
}

