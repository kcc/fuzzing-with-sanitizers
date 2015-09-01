

declare void @bar()



define i32 @test1() personality i32 (...)* @__gxx_personality_v0 {



        invoke void @bar( )
                        to label %1 unwind label %Rethrow
        ret i32 0
Rethrow:
        %exn = landingpad {i8*, i32}
                 catch i8* null
        resume { i8*, i32 } %exn
}

declare i32 @__gxx_personality_v0(...)
