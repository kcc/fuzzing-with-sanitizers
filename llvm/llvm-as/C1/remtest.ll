



define i32 @test1() {
        %R = srem i32 4, 3              
        ret i32 %R
}

define i32 @test2() {
        %R = srem i32 123, -23          
        ret i32 %R
}

define float @test3() {
        %R = frem float 0x4028E66660000000, 0x405ECDA1C0000000          
        ret float %R
}

define double @test4() {
        %R = frem double 0x4073833BEE07AFF8, 0x4028AAABB2A0D19C         
        ret double %R
}

