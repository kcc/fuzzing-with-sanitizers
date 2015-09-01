

define i32 @test(i32 %X) {
        %Y = srem i32 %X, undef         
        ret i32 %Y
}

