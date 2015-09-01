

declare i32 @External()

define internal i32 @Callee() {
        %I = call i32 @External( )              
        %J = add i32 %I, %I             
        ret i32 %J
}

define i32 @Caller() personality i32 (...)* @__gxx_personality_v0 {
        %V = invoke i32 @Callee( )
                        to label %Ok unwind label %Bad          

Ok:             
        ret i32 %V

Bad:            
        %exn = landingpad {i8*, i32}
                 cleanup
        ret i32 0
}

declare i32 @__gxx_personality_v0(...)

