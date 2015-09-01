

@handler_installed.6144.b = external global i1          

define void @__mf_sigusr1_respond() {
entry:
        %tmp8.b = load i1, i1* @handler_installed.6144.b            
        br i1 false, label %cond_true7, label %cond_next

cond_next:              
        br i1 %tmp8.b, label %bb, label %cond_next3

cond_next3:             
        ret void

bb:             
        ret void

cond_true7:             
        ret void
}
