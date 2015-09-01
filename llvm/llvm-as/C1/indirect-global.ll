




@G = internal global i32* null		

declare i8* @malloc(i32)
define void @test() {
	%a = call i8* @malloc(i32 4)
        %A = bitcast i8* %a to i32*
	store i32* %A, i32** @G
	ret void
}

define i32 @test1(i32* %P) {

	%g1 = load i32*, i32** @G		
	%h1 = load i32, i32* %g1		
	store i32 123, i32* %P
	%g2 = load i32*, i32** @G		
	%h2 = load i32, i32* %g1		
	%X = sub i32 %h1, %h2		
	ret i32 %X
}
