

define void @dead_test8(i32* %data.1, i32 %idx.1) {
entry:
        %tmp.1 = load i32, i32* %data.1              
        %tmp.41 = icmp sgt i32 %tmp.1, 0                
        br i1 %tmp.41, label %no_exit.preheader, label %return

no_exit.preheader:              
        %tmp.11 = getelementptr i32, i32* %data.1, i64 1             
        %tmp.22-idxcast = sext i32 %idx.1 to i64                
        %tmp.28 = getelementptr i32, i32* %data.1, i64 %tmp.22-idxcast               
        br label %no_exit

no_exit:                
        %k.1 = phi i32 [ %k.0, %endif ], [ 0, %no_exit.preheader ]              
        %i.0 = phi i32 [ %inc.1, %endif ], [ 0, %no_exit.preheader ]            
        %tmp.12 = load i32, i32* %tmp.11             
        %tmp.14 = sub i32 0, %tmp.12            
        %tmp.161 = icmp ne i32 %k.1, %tmp.14            
        br i1 %tmp.161, label %then, label %else

then:           
        %inc.0 = add i32 %k.1, 1                
        br label %endif

else:           
        %dec = add i32 %k.1, -1         
        br label %endif

endif:          
        %k.0 = phi i32 [ %dec, %else ], [ %inc.0, %then ]               
        store i32 2, i32* %tmp.28
        %inc.1 = add i32 %i.0, 1                
        %tmp.4 = icmp slt i32 %inc.1, %tmp.1            
        br i1 %tmp.4, label %no_exit, label %return

return:         
        ret void
}

