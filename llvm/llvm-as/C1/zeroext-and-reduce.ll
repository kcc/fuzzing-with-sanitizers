


define i32 @test1(i8 %X) {
        %Y = zext i8 %X to i32          
        %Z = and i32 %Y, 65544          
        ret i32 %Z
}


