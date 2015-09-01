


@G1 = internal global i8 0              
@G2 = internal global i8 0              

define i16 @test1() {
        %tmp.0 = load i8, i8* @G1           
        %tmp.3 = zext i8 %tmp.0 to i16          
        ret i16 %tmp.3
}

define i16 @test2() {
        %tmp.0 = load i8, i8* @G2           
        %tmp.3 = sext i8 %tmp.0 to i16          
        ret i16 %tmp.3
}

