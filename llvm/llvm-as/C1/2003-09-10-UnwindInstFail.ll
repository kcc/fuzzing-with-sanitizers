

define void @test() personality i32 (...)* @__gxx_personality_v0 {
        br i1 false, label %then, label %endif

then:           
        invoke void null( i8* null )
                        to label %invoke_cont unwind label %invoke_catch

invoke_catch:           
        %exn = landingpad {i8*, i32}
                 cleanup
        resume { i8*, i32 } %exn

invoke_cont:            
        ret void

endif:          
        ret void
}

declare i32 @__gxx_personality_v0(...)
