






@G = external global i32

define i32 @test1() {





































	%tmp = load i32, i32* @G
	ret i32 %tmp
}
