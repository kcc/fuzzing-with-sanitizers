

define void @ab() {
entry:
        br label %codeReplTail

then.1:         
        br label %loopentry.1

loopentry.1:            
        br i1 false, label %no_exit.1, label %loopexit.0.loopexit1

no_exit.1:              
        br label %loopentry.1

loopexit.0.loopexit:            
        ret void

loopexit.0.loopexit1:           
        ret void

codeReplTail:           
        switch i16 0, label %codeReplTail [
                 i16 0, label %loopexit.0.loopexit
                 i16 1, label %then.1
        ]
}

