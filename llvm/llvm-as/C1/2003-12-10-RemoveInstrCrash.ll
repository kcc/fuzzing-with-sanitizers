

define void @test() {
entry:
        %inc.2 = add i32 1, 1           
        br i1 false, label %no_exit, label %loopexit

no_exit:                
        %j.0.pn = phi i32 [ %inc.3, %no_exit ], [ %inc.2, %entry ]              
        %k.0.pn = phi i32 [ %inc.4, %no_exit ], [ 1, %entry ]           
        %inc.3 = add i32 %j.0.pn, 1             
        %inc.4 = add i32 %k.0.pn, 1             
        br i1 undef, label %no_exit, label %loopexit

loopexit:               
        ret void
}

