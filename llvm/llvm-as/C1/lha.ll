

define i32 @test(i16* %a) {
        %tmp.1 = load i16, i16* %a           
        %tmp.2 = sext i16 %tmp.1 to i32         
        ret i32 %tmp.2
}

