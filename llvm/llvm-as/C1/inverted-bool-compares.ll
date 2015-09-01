

define i32 @test(i1 %B, i32* %P) {
        br i1 %B, label %T, label %F

T:              
        store i32 123, i32* %P
        ret i32 0

F:              
        ret i32 17
}

