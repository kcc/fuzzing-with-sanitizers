

define void @main() {
entry:
        br label %no_exit.1.outer

no_exit.1.outer:                
        %l_14237116.1.0.ph = phi i8 [ -46, %entry ], [ 0, %endif.0 ]            
        %i.0.0.0.ph = phi i32 [ 0, %entry ], [ %inc.1, %endif.0 ]               
        br label %no_exit.1

no_exit.1:              
        br i1 false, label %_Z13func_47880058cc.exit, label %then.i

then.i:         
        br label %_Z13func_47880058cc.exit

_Z13func_47880058cc.exit:               
        br i1 false, label %then.0, label %no_exit.1

then.0:         
        %tmp.6 = bitcast i8 %l_14237116.1.0.ph to i8            
        br i1 false, label %endif.0, label %then.1

then.1:         
        br label %endif.0

endif.0:                
        %inc.1 = add i32 %i.0.0.0.ph, 1         
        %tmp.2 = icmp sgt i32 %inc.1, 99                
        br i1 %tmp.2, label %loopexit.0, label %no_exit.1.outer

loopexit.0:             
        %tmp.28 = zext i8 %tmp.6 to i32         
        ret void
}

