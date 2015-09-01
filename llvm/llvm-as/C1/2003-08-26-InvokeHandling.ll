


declare void @foo()

define i32 @test(i1 %cond) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
Entry:
	br i1 %cond, label %Inv, label %Cont
Inv:		
	invoke void @foo( )
			to label %Ok unwind label %LPad
Ok:		
	br label %Cont
LPad:
        %val = landingpad { i8*, i32 }
                 catch i8* null
        br label %Cont
Cont:		
	%X = phi i32 [ 0, %Entry ], [ 1, %Ok ], [ 0, %LPad ]		
	ret i32 %X
}

declare i32 @__gxx_personality_v0(...)
