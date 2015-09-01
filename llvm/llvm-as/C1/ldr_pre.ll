





define i32* @test1(i32* %X, i32* %dest) {
        %Y = getelementptr i32, i32* %X, i32 4               
        %A = load i32, i32* %Y               
        store i32 %A, i32* %dest
        ret i32* %Y
}




define i32 @test2(i32 %a, i32 %b, i32 %c) {
        %tmp1 = sub i32 %a, %b          
        %tmp2 = inttoptr i32 %tmp1 to i32*              
        %tmp3 = load i32, i32* %tmp2         
        %tmp4 = sub i32 %tmp1, %c               
        %tmp5 = add i32 %tmp4, %tmp3            
        ret i32 %tmp5
}
