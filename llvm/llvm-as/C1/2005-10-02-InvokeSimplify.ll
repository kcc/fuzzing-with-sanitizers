

define i1 @foo() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
	%X = invoke i1 @foo( )
			to label %N unwind label %F		
F:		
        %val = landingpad { i8*, i32 }
                 catch i8* null
	ret i1 false
N:		
	br i1 %X, label %A, label %B
A:		
	ret i1 true
B:		
	ret i1 true
}

declare i32 @__gxx_personality_v0(...)
