


define i32 @test1(i32 %X) {
        %Y = and i32 %X, 15             
        %Z = sdiv i32 %Y, 4             
        ret i32 %Z
}

define i32 @test2(i32 %W) {
        %X = and i32 %W, 15             
        %Y = sub i32 16, %X             
        %Z = sdiv i32 %Y, 4             
        ret i32 %Z
}

define i32 @test3(i32 %W) {
        %X = and i32 %W, 15             
        %Y = sub i32 15, %X             
        %Z = sdiv i32 %Y, 4             
        ret i32 %Z
}

define i32 @test4(i32 %W) {
        %X = and i32 %W, 2              
        %Y = sub i32 5, %X              
        %Z = sdiv i32 %Y, 2             
        ret i32 %Z
}

