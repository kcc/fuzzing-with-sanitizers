

@PL_regcomp_parse = internal global i8* null		

define void @test() {
	br label %Outer
Outer:		
	br label %Inner
Inner:		
	%tmp.114.i.i.i = load i8*, i8** @PL_regcomp_parse		
	%tmp.115.i.i.i = load i8, i8* %tmp.114.i.i.i		
	store i8* null, i8** @PL_regcomp_parse
	br i1 false, label %Inner, label %Next
Next:		
	br i1 false, label %Outer, label %Exit
Exit:		
	ret void
}

