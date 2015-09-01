





define i32 @test() {
entry:
        br label %cond_true

cond_true:              
        %a.0.0 = phi i32 [ 10, %entry ], [ %tmp4, %cond_true ]          
        %b.0.0 = phi i32 [ 0, %entry ], [ %tmp2, %cond_true ]           
        %tmp2 = add i32 %b.0.0, %a.0.0          
        %tmp4 = add i32 %a.0.0, -1              
        %tmp = icmp sgt i32 %tmp4, 7            
        br i1 %tmp, label %cond_true, label %bb7

bb7:            
        ret i32 %tmp2
}

