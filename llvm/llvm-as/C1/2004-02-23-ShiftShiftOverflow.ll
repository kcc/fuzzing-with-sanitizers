

define i32 @test(i32 %X) {
        
        %Y = ashr i32 %X, 17            
        %Z = ashr i32 %Y, 17            
        ret i32 %Z
}

define i32 @test2(i32 %X) {
        
        %Y = shl i32 %X, 17             
        %Z = shl i32 %Y, 17             
        ret i32 %Z
}
