


define i32 @test(i8 %amt) {
        %shift.upgrd.1 = zext i8 %amt to i32            
        %B = lshr i32 -1, %shift.upgrd.1                
        ret i32 %B
}

