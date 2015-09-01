

declare i32 @strlen(i8*) readnone

define i32 @test() personality i32 (...)* @__gxx_personality_v0 {
	
	invoke i32 @strlen( i8* null ) readnone
			to label %Cont unwind label %Other		

Cont:		
	ret i32 0

Other:		
         %exn = landingpad {i8*, i32}
                  cleanup
	ret i32 1
}

declare i32 @__gxx_personality_v0(...)
