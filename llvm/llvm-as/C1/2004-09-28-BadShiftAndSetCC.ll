

define i1 @test(i32 %tmp.124) {
        %tmp.125 = shl i32 %tmp.124, 8          
        %tmp.126.mask = and i32 %tmp.125, -16777216             
        %tmp.128 = icmp eq i32 %tmp.126.mask, 167772160         
        ret i1 %tmp.128
}

