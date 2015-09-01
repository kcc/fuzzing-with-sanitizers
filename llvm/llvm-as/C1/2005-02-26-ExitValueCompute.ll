


define i32 @main() {
entry:
        br label %no_exit

no_exit:                
        %i.1.0 = phi i32 [ 0, %entry ], [ %inc, %no_exit ]              
        %tmp.4 = icmp sgt i32 %i.1.0, 50                
        %tmp.7 = select i1 %tmp.4, i32 100, i32 0               
        %i.0 = add i32 %i.1.0, 1                
        %inc = add i32 %i.0, %tmp.7             
        %tmp.1 = icmp slt i32 %inc, 100         
        br i1 %tmp.1, label %no_exit, label %loopexit

loopexit:               
        ret i32 %inc
}

