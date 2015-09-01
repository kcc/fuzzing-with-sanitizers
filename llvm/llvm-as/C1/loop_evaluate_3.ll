


define i32 @foo() {
entry:
        br label %bb5

bb5:            
        %i.01.0 = phi i32 [ 0, %entry ], [ %tmp2, %bb5 ]                
        %x.03.0 = phi i32 [ 0, %entry ], [ %tmp4, %bb5 ]                
        %tmp2 = add i32 %i.01.0, 3              
        %tmp4 = add i32 %x.03.0, 1              
        icmp slt i32 %tmp4, 200000              
        br i1 %0, label %bb5, label %bb7

bb7:            
        ret i32 %tmp2
}

