


	%struct.HexxagonMove = type { i8, i8, i32 }

define void @_ZN16HexxagonMoveList7addMoveER12HexxagonMove() {
entry:
	br i1 false, label %bb9.preheader, label %bb11

bb9.preheader:		
	br label %bb9

bb1:		
	br i1 false, label %bb3, label %bb8

bb3:		
	br label %bb5

bb4:		
	br label %bb5

bb5:		
	%exitcond = icmp eq i32 0, 0		
	br i1 %exitcond, label %bb7, label %bb4

bb7:		
	store %struct.HexxagonMove* null, %struct.HexxagonMove** null, align 4
	br label %bb8

bb8:		
	br label %bb9

bb9:		
	br i1 false, label %bb11, label %bb1

bb11:		
	ret void
}
