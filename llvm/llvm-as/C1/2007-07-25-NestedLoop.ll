

	%struct.TypHeader = type { i32, %struct.TypHeader**, [3 x i8], i8 }

define %struct.TypHeader* @LtRec(%struct.TypHeader* %hdL, %struct.TypHeader* %hdR) {
entry:
	br i1 false, label %bb556.preheader, label %bb534.preheader

bb534.preheader:		
	ret %struct.TypHeader* null

bb556.preheader:		
	%tmp56119 = getelementptr %struct.TypHeader, %struct.TypHeader* %hdR, i32 0, i32 0		
	%tmp56220 = load i32, i32* %tmp56119		
	br i1 false, label %bb.nph23, label %bb675.preheader

bb.nph23:		
	ret %struct.TypHeader* null

bb656:		
	%tmp678 = load i32, i32* %tmp677		
	br i1 false, label %bb684, label %bb656

bb684:		
	br i1 false, label %bb924.preheader, label %bb675.outer

bb675.outer:		
	%tmp67812 = load i32, i32* %tmp67711		
	br i1 false, label %bb684, label %bb656

bb675.preheader:		
	%tmp67711 = getelementptr %struct.TypHeader, %struct.TypHeader* %hdR, i32 0, i32 0		
	%tmp677 = getelementptr %struct.TypHeader, %struct.TypHeader* %hdR, i32 0, i32 0		
	br label %bb675.outer

bb924.preheader:		
	ret %struct.TypHeader* null
}
