

define void @maketree() {
entry:
        br i1 false, label %no_exit.1, label %loopexit.0

no_exit.1:              
        br i1 false, label %endif, label %expandbox.entry

expandbox.entry:                
        br i1 false, label %loopexit.1, label %no_exit.1

endif:          
        br i1 false, label %loopexit.1, label %no_exit.1

loopexit.1:             
        %ic.i.0.0.4 = phi i32 [ 0, %expandbox.entry ], [ 0, %endif ]            
        ret void

loopexit.0:             
        ret void
}

