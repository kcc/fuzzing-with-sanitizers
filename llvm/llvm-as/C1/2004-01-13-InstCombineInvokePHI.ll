








declare i8* @test()

define i32 @foo() personality i32 (...)* @__gxx_personality_v0 {
entry:
        br i1 true, label %cont, label %call

call:           
        %P = invoke i32* bitcast (i8* ()* @test to i32* ()*)( )
                        to label %cont unwind label %N          

cont:           
        %P2 = phi i32* [ %P, %call ], [ null, %entry ]          
        %V = load i32, i32* %P2              
        ret i32 %V

N:              
        %exn = landingpad {i8*, i32}
                 cleanup
        ret i32 0
}

declare i32 @__gxx_personality_v0(...)
