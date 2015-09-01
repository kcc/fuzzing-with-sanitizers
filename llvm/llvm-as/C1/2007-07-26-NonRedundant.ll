

@bsLive = external global i32		

define i32 @bsR(i32 %n) {
entry:
	br i1 false, label %cond_next, label %bb19

cond_next:		
	store i32 0, i32* @bsLive, align 4
	br label %bb19

bb19:		
	%tmp29 = load i32, i32* @bsLive, align 4		
	ret i32 0
}
