

	%struct..0anon = type { i32 }
	%struct.rtx_def = type { i16, i8, i8, [1 x %struct..0anon] }

define fastcc void @immed_double_const(i32 %i0, i32 %i1) {
entry:
	%tmp1 = load i32, i32* null		
	switch i32 %tmp1, label %bb103 [
		 i32 1, label %bb
		 i32 3, label %bb
	]
bb:		
	%tmp14 = icmp sgt i32 0, 31		
	br i1 %tmp14, label %cond_next77, label %cond_next17
cond_next17:		
	ret void
cond_next77:		
	%tmp79.not = icmp ne i32 %i1, 0		
	%tmp84 = icmp slt i32 %i0, 0		
	%bothcond1 = or i1 %tmp79.not, %tmp84		
	br i1 %bothcond1, label %bb88, label %bb99
bb88:		
	%bothcond2 = and i1 false, %tmp84		
	ret void
bb99:		
	ret void
bb103:		
	ret void
}
