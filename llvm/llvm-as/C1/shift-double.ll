


define i64 @test1(i64 %X, i8 %C) {
        %shift.upgrd.1 = zext i8 %C to i64              
        %Y = shl i64 %X, %shift.upgrd.1         
        ret i64 %Y
}

define i64 @test2(i64 %X, i8 %C) {
        %shift.upgrd.2 = zext i8 %C to i64              
        %Y = ashr i64 %X, %shift.upgrd.2                
        ret i64 %Y
}

define i64 @test3(i64 %X, i8 %C) {
        %shift.upgrd.3 = zext i8 %C to i64              
        %Y = lshr i64 %X, %shift.upgrd.3                
        ret i64 %Y
}

define i32 @test4(i32 %A, i32 %B, i8 %C) {
        %shift.upgrd.4 = zext i8 %C to i32              
        %X = shl i32 %A, %shift.upgrd.4         
        %Cv = sub i8 32, %C             
        %shift.upgrd.5 = zext i8 %Cv to i32             
        %Y = lshr i32 %B, %shift.upgrd.5                
        %Z = or i32 %Y, %X              
        ret i32 %Z
}

define i16 @test5(i16 %A, i16 %B, i8 %C) {
        %shift.upgrd.6 = zext i8 %C to i16              
        %X = shl i16 %A, %shift.upgrd.6         
        %Cv = sub i8 16, %C             
        %shift.upgrd.7 = zext i8 %Cv to i16             
        %Y = lshr i16 %B, %shift.upgrd.7                
        %Z = or i16 %Y, %X              
        ret i16 %Z
}

