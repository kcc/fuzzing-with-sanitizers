


define internal i32 @test(i32 %DEADARG) {
        ret i32 %DEADARG
}

define i32 @test2(i32 %A) {
        %DEAD = call i32 @test( i32 %A )                
        ret i32 123
}

define i32 @test3() {
        %X = call i32 @test2( i32 3232 )                
        %Y = add i32 %X, -123           
        ret i32 %Y
}

