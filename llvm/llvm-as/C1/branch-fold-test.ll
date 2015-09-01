




define i32 @test(i32 %A, i32 %B) {
J:
        %C = add i32 %A, 12             
        br i1 true, label %L, label %K
L:              
        %D = add i32 %C, %B             
        ret i32 %D
K:              
        %E = add i32 %C, %B             
        ret i32 %E
}

