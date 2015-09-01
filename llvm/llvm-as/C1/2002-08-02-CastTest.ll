




define i64 @test3(i64 %A) {
        %c1 = trunc i64 %A to i8                
        %c2 = zext i8 %c1 to i64                
        ret i64 %c2
}

