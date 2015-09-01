





target datalayout = "e-p:32:32"

define void @dead_test8() {
entry:
        br label %loopentry

loopentry:              
        %k.1 = phi i32 [ %k.0, %endif ], [ 0, %entry ]          
        br i1 false, label %no_exit, label %return

no_exit:                
        br i1 false, label %then, label %else

then:           
        br label %endif

else:           
        %dec = add i32 %k.1, -1         
        br label %endif

endif:          
        %k.0 = phi i32 [ %dec, %else ], [ 0, %then ]            
        store i32 2, i32* null
        br label %loopentry

return:         
        ret void
}

