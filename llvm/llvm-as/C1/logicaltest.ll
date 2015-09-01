




define i32 @test1() {
        %R = and i32 4, 1234            
        ret i32 %R
}

define i1 @test1.upgrd.1() {
        %R = and i1 true, false         
        ret i1 %R
}

define i32 @test2() {
        %R = or i32 4, 1234             
        ret i32 %R
}

define i1 @test2.upgrd.2() {
        %R = or i1 true, false          
        ret i1 %R
}

define i32 @test3() {
        %R = xor i32 4, 1234            
        ret i32 %R
}

define i1 @test3.upgrd.3() {
        %R = xor i1 true, false         
        ret i1 %R
}

