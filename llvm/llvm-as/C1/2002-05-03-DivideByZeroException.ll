




define i32 @test() {
        %R = sdiv i32 12, 0             
        ret i32 %R
}

define i32 @test2() {
        %R = srem i32 12, 0             
        ret i32 %R
}

