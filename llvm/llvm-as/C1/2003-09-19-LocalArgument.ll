






define i32 @test(i32* %P) {
	%X = alloca i32
	%V1 = load i32, i32* %P
	store i32 0, i32* %X
	%V2 = load i32, i32* %P
	%Diff = sub i32 %V1, %V2
	ret i32 %Diff
}
