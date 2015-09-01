

define i32 @unique(i8* %full, i32 %p, i32 %len, i32 %mode, i32 %verbos, i32 %flags) {
entry:
	br i1 false, label %cond_true15, label %cond_next107

cond_true15:		
	br i1 false, label %bb98.preheader, label %bb

bb:		
	ret i32 0

bb98.preheader:		
	br i1 false, label %bb103, label %bb69.outer

bb76.split:		
	br i1 false, label %bb103, label %bb69.outer

bb69.outer:		
	%from.0.reg2mem.0.ph.rec = phi i32 [ %tmp75.rec, %bb76.split ], [ 0, %bb98.preheader ]		
	%tmp75.rec = add i32 %from.0.reg2mem.0.ph.rec, 1		
	%tmp75 = getelementptr i8, i8* null, i32 %tmp75.rec		
	br i1 false, label %bb69.us208, label %bb69.outer.split.split

bb69.us208:		
	switch i32 0, label %bb76.split [
		 i32 47, label %bb89
		 i32 58, label %bb89
		 i32 92, label %bb89
	]

bb69.outer.split.split:		
	switch i8 0, label %bb76.split [
		 i8 47, label %bb89
		 i8 58, label %bb89
		 i8 92, label %bb89
	]

bb89:		
	%tmp75.lcssa189 = phi i8* [ %tmp75, %bb69.us208 ], [ %tmp75, %bb69.us208 ], [ %tmp75, %bb69.us208 ], [ %tmp75, %bb69.outer.split.split ], [ %tmp75, %bb69.outer.split.split ], [ %tmp75, %bb69.outer.split.split ]		
	ret i32 0

bb103:		
	ret i32 0

cond_next107:		
	ret i32 0
}
