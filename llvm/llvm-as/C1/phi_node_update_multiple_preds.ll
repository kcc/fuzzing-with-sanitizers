


define fastcc void @loadloop() {
entry:
	switch i8 0, label %shortcirc_next [
		 i8 32, label %loopexit.2
		 i8 59, label %loopexit.2
	]
shortcirc_next:		
	%indvar37 = phi i32 [ 0, %entry ], [ %indvar.next38, %no_exit.2 ]		
	%gep.upgrd.1 = zext i32 %indvar37 to i64		
	%wp.2.4 = getelementptr i8, i8* null, i64 %gep.upgrd.1		
	br i1 false, label %loopexit.2, label %no_exit.2
no_exit.2:		
	%wp.2.4.rec = bitcast i32 %indvar37 to i32		
	%inc.1.rec = add i32 %wp.2.4.rec, 1		
	%inc.1 = getelementptr i8, i8* null, i32 %inc.1.rec		
	%indvar.next38 = add i32 %indvar37, 1		
	switch i8 0, label %shortcirc_next [
		 i8 32, label %loopexit.2
		 i8 59, label %loopexit.2
	]
loopexit.2:		
	%wp.2.7 = phi i8* [ null, %entry ], [ null, %entry ], [ %wp.2.4, %shortcirc_next ], [ %inc.1, %no_exit.2 ], [ %inc.1, %no_exit.2 ]		
	ret void
}

