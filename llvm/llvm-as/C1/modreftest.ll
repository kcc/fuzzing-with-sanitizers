

@X = internal global i32 4		

define i32 @test(i32* %P) {




	store i32 12, i32* @X
	call void @doesnotmodX( )
	%V = load i32, i32* @X		
	ret i32 %V
}

define void @doesnotmodX() {
	ret void
}
