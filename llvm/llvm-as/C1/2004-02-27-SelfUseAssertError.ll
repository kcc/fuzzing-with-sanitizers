




define void @test() {
entry:
        ret void

no_exit.2:              
        %tmp.103 = fcmp olt double 0.000000e+00, 0.000000e+00           
        br i1 %tmp.103, label %endif.6, label %else.0

else.0:         
        store i16 0, i16* null
        br label %endif.6

endif.6:                
        %inc.2 = add i32 %inc.2, 1              
        %tmp.96 = icmp slt i32 %inc.2, 0                
        br i1 %tmp.96, label %no_exit.2, label %UnifiedReturnBlock1

UnifiedReturnBlock1:            
        ret void
}

