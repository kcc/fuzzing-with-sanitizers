

declare i32* @bar()

define float* @foo() personality i32 (...)* @__gxx_personality_v0 {
        %tmp.11 = invoke float* bitcast (i32* ()* @bar to float* ()*)( )
                        to label %invoke_cont unwind label %X           

invoke_cont:            
        ret float* %tmp.11

X:              
        %exn = landingpad {i8*, i32}
                 cleanup
        ret float* null
}

declare i32 @__gxx_personality_v0(...)
