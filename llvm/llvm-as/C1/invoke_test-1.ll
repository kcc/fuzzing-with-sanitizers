





declare void @might_throw()

define internal void @callee() {
        call void @might_throw( )
        ret void
}


define i32 @caller() personality i32 (...)* @__gxx_personality_v0 {
        invoke void @callee( )
                        to label %cont unwind label %exc

cont:           
        ret i32 0

exc:            
        %exn = landingpad {i8*, i32}
                 cleanup
        ret i32 1
}

declare i32 @__gxx_personality_v0(...)
