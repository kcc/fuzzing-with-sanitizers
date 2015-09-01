

define void @get_block() {
endif.0:
        br label %no_exit.30

no_exit.30:             
        %x.12.0 = phi i32 [ %inc.28, %no_exit.30 ], [ -2, %endif.0 ]            
        %tmp.583 = load i16, i16* null               
        %tmp.584 = zext i16 %tmp.583 to i32             
        %tmp.588 = load i32, i32* null               
        %tmp.589 = mul i32 %tmp.584, %tmp.588           
        %tmp.591 = add i32 %tmp.589, 0          
        %inc.28 = add i32 %x.12.0, 1            
        %tmp.565 = icmp sgt i32 %inc.28, 3              
        br i1 %tmp.565, label %loopexit.30, label %no_exit.30

loopexit.30:            
        %tmp.591.lcssa = phi i32 [ %tmp.591, %no_exit.30 ]              
        ret void
}

