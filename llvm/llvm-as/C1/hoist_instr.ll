


define i32 @foo(i1 %C, i32 %A, i32 %B) {
entry:
        br i1 %C, label %then, label %endif

then:           


        br label %endif

endif:          
        %X = phi i32 [ %A, %then ], [ 15, %entry ]              
        %Y = sdiv i32 %X, 42            
        ret i32 %Y
}

