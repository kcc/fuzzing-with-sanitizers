

define i32 @f(i32 %a, i32 %b) {
        %tmp.2 = mul i32 %a, %a         
        %tmp.5 = shl i32 %a, 1          
        %tmp.6 = mul i32 %tmp.5, %b             
        %tmp.10 = mul i32 %b, %b                
        %tmp.7 = add i32 %tmp.10, %tmp.2                
        %tmp.11 = add i32 %tmp.7, %tmp.6                
        ret i32 %tmp.11
}

