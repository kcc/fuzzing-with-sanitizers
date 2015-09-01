

define i64 @__ashldi3(i64 %u, i64 %b) {
entry:
        br i1 false, label %UnifiedReturnBlock, label %cond_next

cond_next:              
        %tmp9 = sub i64 32, %b          
        %tmp11 = icmp slt i64 %tmp9, 1          
        %tmp2180 = trunc i64 %u to i32          
        %tmp2223 = trunc i64 %tmp9 to i32               
        br i1 %tmp11, label %cond_true14, label %cond_false

cond_true14:            
        %tmp24 = sub i32 0, %tmp2223            
        %tmp25 = shl i32 %tmp2180, %tmp24               
        %tmp2569 = zext i32 %tmp25 to i64               
        %tmp256970 = shl i64 %tmp2569, 32               
        ret i64 %tmp256970

cond_false:             
        %tmp35 = lshr i32 %tmp2180, %tmp2223            
        %tmp54 = or i32 %tmp35, 0               
        %tmp5464 = zext i32 %tmp54 to i64               
        %tmp546465 = shl i64 %tmp5464, 32               
        %tmp546465.ins = or i64 %tmp546465, 0           
        ret i64 %tmp546465.ins

UnifiedReturnBlock:
        ret i64 %u
}
