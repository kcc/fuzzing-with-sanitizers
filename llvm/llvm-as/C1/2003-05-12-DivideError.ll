




define i32 @test() {
        %R = sdiv i32 -2147483648, -1           
        ret i32 %R
}

define i32 @test2() {
        %R = srem i32 -2147483648, -1           
        ret i32 %R
}

