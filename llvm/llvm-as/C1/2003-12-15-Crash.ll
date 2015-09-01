
define void @_ZN17CoinFactorization7cleanupEv() {
entry:
        br i1 false, label %loopexit.14, label %cond_continue.3

cond_continue.3:                
        ret void

loopexit.14:            
        %tmp.738 = sub i32 0, 0         
        br i1 undef, label %no_exit.15.preheader, label %loopexit.15

no_exit.15.preheader:           
        br label %no_exit.15

no_exit.15:             
        %highC.0 = phi i32 [ %tmp.738, %no_exit.15.preheader ], [ %dec.0, %no_exit.15 ]         
        %dec.0 = add i32 %highC.0, -1           
        br i1 undef, label %no_exit.15, label %loopexit.15

loopexit.15:            
        ret void
}

