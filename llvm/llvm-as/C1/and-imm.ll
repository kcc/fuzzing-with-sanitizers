


define i32 @test(i32 %X) {
        %Y = and i32 %X, 32769          
        ret i32 %Y
}


define i32 @test2(i32 %X) {
        %Y = and i32 %X, -2147418112            
        ret i32 %Y
}

