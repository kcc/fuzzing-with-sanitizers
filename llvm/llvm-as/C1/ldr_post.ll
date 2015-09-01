





define i32 @test1(i32 %a, i32 %b, i32 %c) {
        %tmp1 = mul i32 %a, %b          
        %tmp2 = inttoptr i32 %tmp1 to i32*              
        %tmp3 = load i32, i32* %tmp2         
        %tmp4 = sub i32 %tmp1, %c               
        %tmp5 = mul i32 %tmp4, %tmp3            
        ret i32 %tmp5
}




define i32 @test2(i32 %a, i32 %b) {
        %tmp1 = mul i32 %a, %b          
        %tmp2 = inttoptr i32 %tmp1 to i32*              
        %tmp3 = load i32, i32* %tmp2         
        %tmp4 = sub i32 %tmp1, 16               
        %tmp5 = mul i32 %tmp4, %tmp3            
        ret i32 %tmp5
}
