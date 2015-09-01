


define i32 @test4() {
entry:
        br label %bb7

bb7:            
        %v.01.0 = phi i32 [ 0, %entry ], [ %tmp4, %bb7 ]                
        %i.03.0 = phi i32 [ 0, %entry ], [ %tmp6, %bb7 ]                
        %tmp2 = shl i32 %i.03.0, 1              
        %tmp4 = add i32 %tmp2, %v.01.0          
        %tmp6 = add i32 %i.03.0, 1              
        icmp slt i32 %tmp6, 100         
        br i1 %0, label %bb7, label %bb9

bb9:            
        ret i32 %tmp4
}

