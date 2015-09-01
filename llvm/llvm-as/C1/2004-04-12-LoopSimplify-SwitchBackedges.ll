

define void @test() {
loopentry.0:
	br label %loopentry.1
loopentry.1:		
	%pixel.4 = phi i32 [ 0, %loopentry.0 ], [ %pixel.4, %loopentry.1 ], [ %tmp.370, %then.6 ], [ %tmp.370, %then.6 ]		
	br i1 false, label %then.6, label %loopentry.1
then.6:		
	%tmp.370 = add i32 0, 0		
	switch i32 0, label %label.7 [
		 i32 6408, label %loopentry.1
		 i32 32841, label %loopentry.1
	]
label.7:		
	ret void
}

