



define i32 @ltst(i32 %x) {
entry:
        icmp sgt i32 %x, 0              
        br i1 %0, label %bb.preheader, label %bb8

bb.preheader:           
        br label %bb

bb:             
        %i.01.0 = phi i32 [ %tmp4, %bb ], [ 0, %bb.preheader ]          
        %j.03.0 = phi i32 [ %tmp2, %bb ], [ 0, %bb.preheader ]          
        %tmp4 = add i32 %i.01.0, 1              
        %tmp2 = add i32 %j.03.0, 1              
        icmp slt i32 %tmp4, %x          
        br i1 %1, label %bb, label %bb8.loopexit

bb8.loopexit:           
        br label %bb8

bb8:            
        %j.03.1 = phi i32 [ 0, %entry ], [ %tmp2, %bb8.loopexit ]               
        ret i32 %j.03.1
}

