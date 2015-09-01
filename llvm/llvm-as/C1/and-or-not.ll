







define i32 @test1(i32 %a, i32 %b) {
entry:
        %tmp3 = or i32 %b, %a           
        %tmp3not = xor i32 %tmp3, -1            
        %tmp6 = and i32 %b, %a          
        %tmp7 = or i32 %tmp6, %tmp3not          
        %tmp7not = xor i32 %tmp7, -1            
        ret i32 %tmp7not
}

define i32 @test2(i32 %a, i32 %b) {
entry:
        %tmp3 = or i32 %b, %a           
        %tmp6 = and i32 %b, %a          
        %tmp6not = xor i32 %tmp6, -1            
        %tmp7 = and i32 %tmp3, %tmp6not         
        ret i32 %tmp7
}

define <4 x i32> @test3(<4 x i32> %a, <4 x i32> %b) {
entry:
        %tmp3 = or <4 x i32> %a, %b             
        %tmp3not = xor <4 x i32> %tmp3, < i32 -1, i32 -1, i32 -1, i32 -1 >              
        %tmp6 = and <4 x i32> %a, %b            
        %tmp7 = or <4 x i32> %tmp6, %tmp3not            
        %tmp7not = xor <4 x i32> %tmp7, < i32 -1, i32 -1, i32 -1, i32 -1 >              
        ret <4 x i32> %tmp7not
}

define <4 x i32> @test4(<4 x i32> %a, <4 x i32> %b) {
entry:
        %tmp3 = or <4 x i32> %a, %b             
        %tmp6 = and <4 x i32> %a, %b            
        %tmp6not = xor <4 x i32> %tmp6, < i32 -1, i32 -1, i32 -1, i32 -1 >              
        %tmp7 = and <4 x i32> %tmp3, %tmp6not           
        ret <4 x i32> %tmp7
}

