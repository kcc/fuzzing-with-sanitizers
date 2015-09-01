










@G = external global i32                

define i32 @test1(i32 %X) {
        %Z = shl i32 %X, 2              
        store volatile i32 %Z, i32* @G
        ret i32 %X
}

