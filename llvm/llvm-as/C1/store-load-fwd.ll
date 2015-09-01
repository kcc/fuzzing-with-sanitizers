

define i32 @test(i32* %P) {
        store i32 1, i32* %P
        %V = load i32, i32* %P               
        ret i32 %V
}

