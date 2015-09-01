


define void @test() {
        %tmp125 = fcmp uno double 0.000000e+00, 0.000000e+00            
        br i1 %tmp125, label %bb154, label %cond_false133

cond_false133:          
        ret void

bb154:          
        %tmp164 = icmp eq i32 0, 0              
        ret void
}

