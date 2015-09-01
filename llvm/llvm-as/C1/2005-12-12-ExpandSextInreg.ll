

define i64 @test(i64 %A) {
        %B = trunc i64 %A to i8         
        %C = sext i8 %B to i64          
        ret i64 %C
}
