







define void @test() {

	br i1 true, label %end, label %Loop
Loop:		
	%V = phi i32 [ 0, %0 ], [ %V1, %Loop ]		
	%V1 = add i32 %V, 1		
	br label %Loop
end:		
	ret void
}

