



@qsz.b = external global i1             

define fastcc void @qst() {
entry:
        br i1 true, label %cond_next71, label %cond_true
cond_true:              
        ret void
cond_next71:            
        %tmp73.b = load i1, i1* @qsz.b              
        %ii.4.ph = select i1 %tmp73.b, i64 4, i64 0             
        br label %bb139
bb82:           
        ret void
bb139:          
        %exitcond89 = icmp eq i64 0, %ii.4.ph           
        br i1 %exitcond89, label %bb82, label %bb139
}

