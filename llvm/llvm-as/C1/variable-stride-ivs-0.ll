





define void @vnum_test8(i32* %data) {
entry:
        %tmp.1 = getelementptr i32, i32* %data, i32 3                
        %tmp.2 = load i32, i32* %tmp.1               
        %tmp.4 = getelementptr i32, i32* %data, i32 4                
        %tmp.5 = load i32, i32* %tmp.4               
        %tmp.8 = getelementptr i32, i32* %data, i32 2                
        %tmp.9 = load i32, i32* %tmp.8               
        %tmp.125 = icmp sgt i32 %tmp.2, 0               
        br i1 %tmp.125, label %no_exit.preheader, label %return

no_exit.preheader:              
        %tmp.16 = getelementptr i32, i32* %data, i32 %tmp.9          
        br label %no_exit


no_exit:                
        %iv.ui = phi i32 [ 0, %no_exit.preheader ], [ %iv..inc.ui, %no_exit ]           
        %iv. = phi i32 [ %tmp.5, %no_exit.preheader ], [ %iv..inc, %no_exit ]           
        %m.0.0 = phi i32 [ %tmp.5, %no_exit.preheader ], [ %tmp.24, %no_exit ]          
        store i32 2, i32* %tmp.16
        %tmp.21 = sub i32 %m.0.0, %iv.          
        store i32 %tmp.21, i32* %data
        %tmp.24 = add i32 %m.0.0, %tmp.9                
        %iv..inc = add i32 %tmp.9, %iv.         
        %iv..inc.ui = add i32 %iv.ui, 1         
        %iv..inc1 = bitcast i32 %iv..inc.ui to i32              
        %tmp.12 = icmp slt i32 %iv..inc1, %tmp.2                
        br i1 %tmp.12, label %no_exit, label %return.loopexit

return.loopexit:                
        br label %return

return:         
        ret void
}

