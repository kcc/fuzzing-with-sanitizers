

define i32* @test1(i32* %X, i32* %dest) {
        %Y = getelementptr i32, i32* %X, i32 4               
        %A = load i32, i32* %Y               
        store i32 %A, i32* %dest
        ret i32* %Y
}



define i32 @test2(i32 %a, i32 %b) {
        %tmp1 = sub i32 %a, 64          
        %tmp2 = inttoptr i32 %tmp1 to i32*              
        %tmp3 = load i32, i32* %tmp2         
        %tmp4 = sub i32 %tmp1, %b               
        %tmp5 = add i32 %tmp4, %tmp3            
        ret i32 %tmp5
}



define i8* @test3(i8* %X, i32* %dest) {
        %tmp1 = getelementptr i8, i8* %X, i32 4
        %tmp2 = load i8, i8* %tmp1
        %tmp3 = sext i8 %tmp2 to i32
        store i32 %tmp3, i32* %dest
        ret i8* %tmp1
}



