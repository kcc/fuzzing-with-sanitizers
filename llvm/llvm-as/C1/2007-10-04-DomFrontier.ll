

@resonant = external global i32		

define void @weightadj() {
entry:
	br label %bb

bb:		
	store i32 0, i32* @resonant, align 4
	br i1 false, label %g.exit, label %bb158

g.exit:		
	br i1 false, label %bb68, label %cond_true

cond_true:		
	store i32 1, i32* @resonant, align 4
	br label %bb68

bb68:		
	%tmp71 = icmp slt i32 0, 0		
	br i1 %tmp71, label %g.exit, label %bb158

bb158:		
	br i1 false, label %bb, label %return

return:		
	ret void
}
