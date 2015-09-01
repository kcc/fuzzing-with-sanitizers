

define i32 @test(i32 %X) {
        %tmp.81 = shl i32 %X, 16                
        %tmp.82 = ashr i32 %tmp.81, 16          
        ret i32 %tmp.82
}

