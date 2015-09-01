



define i32 @test() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
	%A = invoke i32 @test( )
			to label %Ret unwind label %Ret2		
Ret:		
	ret i32 %A
Ret2:		
        %val = landingpad { i8*, i32 }
                 catch i8* null
	ret i32 undef
}

declare i32 @__gxx_personality_v0(...)
