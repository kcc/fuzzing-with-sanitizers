

define i32 @stringSearch_Clib(i32 %count) {
entry:
	br i1 false, label %bb36, label %bb44

bb4:		
	br i1 false, label %cond_next, label %cond_true

cond_true:		
	ret i32 0

cond_next:		
	ret i32 0

bb36:		
	br i1 false, label %bb4, label %bb41

bb41:		
	%ttmp2 = icmp slt i32 0, %count		
	br i1 %ttmp2, label %bb36, label %bb44

bb44:		
	ret i32 0
}
