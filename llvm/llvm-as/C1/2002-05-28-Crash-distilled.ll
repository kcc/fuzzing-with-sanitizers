



define float @test(i32 %i) {
        %F = sitofp i32 %i to float             
        %I = bitcast i32 %i to i32              
        br label %Loop

Loop:           
        %B = icmp ne i32 %I, 0          
        br i1 %B, label %Out, label %Loop

Out:            
        ret float %F
}

