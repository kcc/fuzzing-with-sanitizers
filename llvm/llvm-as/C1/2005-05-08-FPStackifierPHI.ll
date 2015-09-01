


define void @radfg_() {
entry:
        br i1 false, label %no_exit.16.preheader, label %loopentry.0
loopentry.0:            
        ret void
no_exit.16.preheader:           
        br label %no_exit.16
no_exit.16:             
        br i1 false, label %loopexit.16.loopexit, label %no_exit.16
loopexit.16.loopexit:           
        br label %no_exit.18
no_exit.18:             
        %tmp.882 = fadd float 0.000000e+00, 0.000000e+00         
        br i1 false, label %loopexit.19, label %no_exit.19.preheader
no_exit.19.preheader:           
        ret void
loopexit.19:            
        br i1 false, label %loopexit.20, label %no_exit.20
no_exit.20:             
        %ai2.1122.tmp.3 = phi float [ %tmp.958, %loopexit.21 ], [ %tmp.882, %loopexit.19 ]              
        %tmp.950 = fmul float %tmp.882, %ai2.1122.tmp.3          
        %tmp.951 = fsub float 0.000000e+00, %tmp.950             
        %tmp.958 = fadd float 0.000000e+00, 0.000000e+00         
        br i1 false, label %loopexit.21, label %no_exit.21.preheader
no_exit.21.preheader:           
        ret void
loopexit.21:            
        br i1 false, label %loopexit.20, label %no_exit.20
loopexit.20:            
        %ar2.1124.tmp.2 = phi float [ 0.000000e+00, %loopexit.19 ], [ %tmp.951, %loopexit.21 ]          
        br i1 false, label %loopexit.18.loopexit, label %no_exit.18
loopexit.18.loopexit:           
        ret void
}

