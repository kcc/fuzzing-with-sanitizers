

define i16 @test1(i32* %X, i16* %A) {


        %Y = load i32, i32* %X               
        %tmp1 = trunc i32 %Y to i16             
        store i16 %tmp1, i16* %A
        %tmp2 = ptrtoint i16* %A to i16         
        %tmp3 = sub i16 %tmp2, 4                
        ret i16 %tmp3
}

define i32 @test2(i32* %X, i32* %A) {


        %Y = load i32, i32* %X               
        store i32 %Y, i32* %A
        %tmp1 = ptrtoint i32* %A to i32         
        %tmp2 = sub i32 %tmp1, 4                
        ret i32 %tmp2
}
