


define i32 @foo(i32 %t, i32 %C) {
entry:
        br label %cond_true

cond_true:              
        %t_addr.0.0 = phi i32 [ %t, %entry ], [ %tmp7, %cond_true ]             
        %tmp7 = add i32 %t_addr.0.0, 1          
        %tmp = icmp sgt i32 %C, 39              
        br i1 %tmp, label %bb12, label %cond_true

bb12:           
        ret i32 %t_addr.0.0
}

