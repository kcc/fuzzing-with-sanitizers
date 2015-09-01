


@Y = global i32 6		

define void @blah(i32* %X) {

	br label %T
T:		
	phi i32* [ %X, %0 ], [ @Y, %Dead ]		
	ret void
Dead:		
	br label %T
}

define i32 @test(i1 %C) {

	br i1 %C, label %T, label %T
T:		
	%X = phi i32 [ 123, %0 ], [ 123, %0 ]		
	ret i32 %X
}

define i32 @main() {

	br label %Test
Test:		
	%X = phi i32 [ 0, %0 ], [ %Y, %Dead ]		
	ret i32 %X
Dead:		
	%Y = ashr i32 12, 4		
	br label %Test
}

