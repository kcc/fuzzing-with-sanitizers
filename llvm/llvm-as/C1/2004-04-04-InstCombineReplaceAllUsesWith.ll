

define i32 @test() {
        ret i32 0

Loop:           
        %X = add i32 %X, 1              
        br label %Loop
}

