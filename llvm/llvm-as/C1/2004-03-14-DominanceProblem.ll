



define i32 @ab(i32 %alpha, i32 %beta) {
entry:
        br label %loopentry.1.preheader

loopentry.1.preheader:          
        br label %loopentry.1

loopentry.1:            
        br i1 false, label %no_exit.1, label %loopexit.0.loopexit1

no_exit.1:              
        %tmp.53 = load i32, i32* null                
        br i1 false, label %shortcirc_next.2, label %loopentry.1

shortcirc_next.2:               
        %tmp.563 = call i32 @wins( i32 0, i32 %tmp.53, i32 3 )          
        ret i32 0

loopexit.0.loopexit1:           
        br label %loopexit.0

loopexit.0:             
        ret i32 0
}

declare i32 @wins(i32, i32, i32)

declare i16 @ab_code()

