

declare i32 @foo()

define void @caller() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
	br i1 true, label %T, label %F
F:		
	%X = invoke i32 @foo( )
			to label %T unwind label %LP		
LP:
        %val = landingpad { i8*, i32 }
                 catch i8* null
        br label %T
T:
	ret void
}

declare i32 @__gxx_personality_v0(...)
