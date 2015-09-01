

define void @test(i32* %ldo, i1 %c, i1 %d) {
bb9:
	br i1 %c, label %bb11, label %bb10
bb10:		
	br label %bb11
bb11:		
	%reg330 = phi i32* [ null, %bb10 ], [ %ldo, %bb9 ]		
	br label %bb20
bb20:		
	store i32* %reg330, i32** null
	br i1 %d, label %bb20, label %done
done:		
	ret void
}

