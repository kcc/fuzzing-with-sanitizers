

define void @start_pass_huff(i32 %gather_statistics) {
entry:
        %tmp = icmp eq i32 %gather_statistics, 0                
        br i1 false, label %cond_next22, label %bb166

cond_next22:            
        %bothcond = and i1 false, %tmp          
        br i1 %bothcond, label %bb34, label %bb46

bb34:           
        ret void

bb46:           
        ret void

bb166:          
        ret void
}

