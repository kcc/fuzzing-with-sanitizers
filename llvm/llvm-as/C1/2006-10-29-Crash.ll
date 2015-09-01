

define void @form_component_prediction(i32 %dy) {
entry:
        %tmp7 = and i32 %dy, 1          
        %tmp27 = icmp eq i32 %tmp7, 0           
        br i1 false, label %cond_next30, label %bb115

cond_next30:            
        ret void

bb115:          
        %bothcond1 = or i1 %tmp27, false                
        br i1 %bothcond1, label %bb228, label %cond_next125

cond_next125:           
        ret void

bb228:          
        ret void
}

