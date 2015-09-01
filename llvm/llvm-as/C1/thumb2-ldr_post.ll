

define i32 @test(i32 %a, i32 %b, i32 %c) {
        %tmp1 = mul i32 %a, %b          
        %tmp2 = inttoptr i32 %tmp1 to i32*              
        %tmp3 = load i32, i32* %tmp2         
        %tmp4 = sub i32 %tmp1, 8               
        %tmp5 = mul i32 %tmp4, %tmp3            
        ret i32 %tmp5
}


