







@__eprintf = external global i8*		

define i8* @test() {
	%A = load i8*, i8** @__eprintf		
	ret i8* %A
}
