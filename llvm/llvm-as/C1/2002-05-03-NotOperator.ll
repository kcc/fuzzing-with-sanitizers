








define i32 @test1() {
        %R = xor i32 123, -1            
        ret i32 %R
}

define i32 @test2() {
        %R = xor i32 -123, -1           
        ret i32 %R
}

