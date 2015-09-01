

define i32 @test() {
        unreachable
}

define i32 @caller() {
        %X = call i32 @test( )          
        ret i32 %X
}

