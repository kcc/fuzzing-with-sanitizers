
define internal i32 @foo(i1 %C) {
        br i1 %C, label %T, label %F

T:              
        ret i32 52

F:              
        ret i32 52
}

define i1 @caller(i1 %C) {
        %X = call i32 @foo( i1 %C )             
        %Y = icmp ne i32 %X, 0          
        ret i1 %Y
}

define i1 @invokecaller(i1 %C) personality i32 (...)* @__gxx_personality_v0 {
        %X = invoke i32 @foo( i1 %C ) to label %OK unwind label %FAIL             
OK:
        %Y = icmp ne i32 %X, 0          
        ret i1 %Y 
FAIL:
        %exn = landingpad {i8*, i32}
                 cleanup
        ret i1 false
}

declare i32 @__gxx_personality_v0(...)
