

define i32 @main() personality i32 (...)* @__gxx_personality_v0 {
entry:
        invoke void @__main( )
                        to label %else unwind label %RethrowExcept

else:           
        %i.2 = phi i32 [ 36, %entry ], [ %i.2, %LJDecisionBB ]          
        br label %LJDecisionBB

LJDecisionBB:           
        br label %else

RethrowExcept:          
        %exn = landingpad {i8*, i32}
                 cleanup
        ret i32 0
}

define void @__main() {
        ret void
}

declare i32 @__gxx_personality_v0(...)
