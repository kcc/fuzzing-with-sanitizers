







@X = constant i32 42		
@Y = constant [2 x { i32, float }] [ { i32, float } { i32 12, float 1.000000e+00 }, { i32, float } { i32 37, float 0x3FF3B2FEC0000000 } ]		

define i32 @test1() {
	%B = load i32, i32* @X		
	ret i32 %B
}

define float @test2() {
	%A = getelementptr [2 x { i32, float }], [2 x { i32, float }]* @Y, i64 0, i64 1, i32 1		
	%B = load float, float* %A		
	ret float %B
}

define i32 @test3() {
	%A = getelementptr [2 x { i32, float }], [2 x { i32, float }]* @Y, i64 0, i64 0, i32 0		
	%B = load i32, i32* %A
	ret i32 %B
}

define i8 @test4() {
	%A = bitcast i32* @X to i8*
	%B = load i8, i8* %A
	ret i8 %B
}

