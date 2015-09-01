


@x = weak global i16 0          
@y = weak global i16 0          

define i32 @f1(i32 %y) {


        %tmp = load i16, i16* @x             
        %tmp1 = add i16 %tmp, 2         
        %tmp2 = sext i16 %tmp1 to i32           
        %tmp3 = ashr i32 %y, 16         
        %tmp4 = mul i32 %tmp2, %tmp3            
        ret i32 %tmp4
}

define i32 @f2(i32 %x, i32 %y) {


        %tmp1 = ashr i32 %x, 16         
        %tmp3 = ashr i32 %y, 16         
        %tmp4 = mul i32 %tmp3, %tmp1            
        ret i32 %tmp4
}

define i32 @f3(i32 %a, i16 %x, i32 %y) {


        %tmp = sext i16 %x to i32               
        %tmp2 = ashr i32 %y, 16         
        %tmp3 = mul i32 %tmp2, %tmp             
        %tmp5 = add i32 %tmp3, %a               
        ret i32 %tmp5
}

