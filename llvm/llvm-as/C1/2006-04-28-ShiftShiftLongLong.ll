



define i64 @test(i64 %X) {
        %Y = shl i64 %X, 16             

        %Z = ashr i64 %Y, 16            

        ret i64 %Z

}

