


define i32 @f3(i32 %a, i16 %x, i32 %y) {





        %tmp = sext i16 %x to i32               
        %tmp2 = ashr i32 %y, 16         
        %tmp3 = mul i32 %tmp2, %tmp             
        %tmp5 = add i32 %tmp3, %a               
        ret i32 %tmp5
}
