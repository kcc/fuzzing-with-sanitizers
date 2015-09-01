

define internal fastcc i32 @term_SharingList(i32* %Term, i32* %List) nounwind {
entry:
	br i1 false, label %bb, label %bb5

bb:		
	%0 = call fastcc i32 @term_SharingList( i32* null, i32* %List ) nounwind		
	unreachable

bb5:		
	ret i32 0
}

define i32 @term_Sharing(i32* %Term) nounwind {
entry:
	br i1 false, label %bb.i, label %bb14

bb.i:		
	%0 = call fastcc i32 @term_SharingList( i32* null, i32* null ) nounwind		
	ret i32 1

bb14:		
	ret i32 0
}
