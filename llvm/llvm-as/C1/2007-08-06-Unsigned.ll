




define i32 @f(i32 %x, i32 %y) {
entry:
        %tmp63 = icmp ult i32 %x, %y            
        br i1 %tmp63, label %bb.preheader, label %bb8

bb.preheader:           
        br label %bb

bb:             
        %x_addr.0 = phi i32 [ %tmp2, %bb3 ], [ %x, %bb.preheader ]              
        %tmp2 = add i32 %x_addr.0, 1            
        br label %bb3

bb3:            
        %tmp6 = icmp ult i32 %tmp2, %y          
        br i1 %tmp6, label %bb, label %bb8.loopexit

bb8.loopexit:           
        br label %bb8

bb8:            
        %x_addr.1 = phi i32 [ %x, %entry ], [ %tmp2, %bb8.loopexit ]            
        br label %return

return:         
        ret i32 %x_addr.1
}
