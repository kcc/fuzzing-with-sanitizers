





declare void @might_throw()

define internal i32 @callee() personality i32 (...)* @__gxx_personality_v0 {
        invoke void @might_throw( )
                        to label %cont unwind label %exc

cont:           
        ret i32 0

exc:            
        %exn = landingpad {i8*, i32}
                 cleanup
        ret i32 1
}


define i32 @caller() personality i32 (...)* @__gxx_personality_v0 {
        %X = invoke i32 @callee( )
                        to label %cont unwind label %UnreachableExceptionHandler                

cont:           
        ret i32 %X

UnreachableExceptionHandler:            
        %exn = landingpad {i8*, i32}
                 cleanup
        ret i32 -1
}

declare i32 @__gxx_personality_v0(...)
