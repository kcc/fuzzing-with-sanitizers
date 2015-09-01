

define void @test() {
        br label %endif.0.i

endif.0.i:              
        br i1 false, label %then.3.i, label %endif.3.i

then.3.i:               
        br label %endif.3.i

endif.3.i:              
        %inxm.0.i = phi i32 [ 8, %then.3.i ], [ 0, %endif.0.i ]         
        %doinner.1.i = phi i32 [ 0, %then.3.i ], [ 0, %endif.0.i ]              
        br label %loopentry.2.i

loopentry.2.i:          
        %inxk.0.i = phi i32 [ %tmp.210.i, %no_exit.2.i ], [ 0, %endif.3.i ]             
        br label %no_exit.2.i

no_exit.2.i:            
        %tmp.210.i = sub i32 %inxk.0.i, %inxm.0.i               
        %tmp.213.i = add i32 %tmp.210.i, 0              
        br label %loopentry.2.i
}

