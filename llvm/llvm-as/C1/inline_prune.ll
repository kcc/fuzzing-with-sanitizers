



define internal i32 @callee1(i32 %A, i32 %B) {
        %cond = icmp eq i32 %A, 123             
        br i1 %cond, label %T, label %F

T:              
        %C = mul i32 %B, %B             
        ret i32 %C

F:              
        ret i32 0
}

define internal i32 @callee2(i32 %A, i32 %B) {
        switch i32 %A, label %T [
                 i32 10, label %F
                 i32 1234, label %G
        ]
                
        %cond = icmp eq i32 %A, 123             
        br i1 %cond, label %T, label %F

T:              
        %C = mul i32 %B, %B             
        ret i32 %C

F:              
        ret i32 0

G:              
        %D = mul i32 %B, %B             
        %E = mul i32 %D, %B             
        ret i32 %E
}

define i32 @test(i32 %A) {
        %X = call i32 @callee1( i32 10, i32 %A )                
        %Y = call i32 @callee2( i32 10, i32 %A )                
        %Z = add i32 %X, %Y             
        ret i32 %Z
}

