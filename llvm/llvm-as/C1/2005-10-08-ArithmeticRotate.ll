




define i32 @test(i32 %X) {
        %Y = and i32 %X, -2             
        %Z = ashr i32 %Y, 11            
        ret i32 %Z
}

