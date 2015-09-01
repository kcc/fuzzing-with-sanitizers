
define i32 @foo() personality i32 (...)* @__gcc_personality_v0 {
        br label %EB

EB:             
        %V = invoke i32 @foo( )
                        to label %Cont unwind label %Unw                

Cont:           
        ret i32 %V

Unw:            
        %exn = landingpad { i8*, i32 }
                 catch i8* null
        resume { i8*, i32 } %exn
}

declare i32 @__gcc_personality_v0(...)
