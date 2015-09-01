


define i32 @test(i8 %A) {
        %B = sext i8 %A to i32          
        %C = ashr i32 %B, 8             
        ret i32 %C
}


