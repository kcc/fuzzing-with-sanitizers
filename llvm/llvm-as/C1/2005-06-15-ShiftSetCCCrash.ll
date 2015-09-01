


define i1 @test() {
        %tmp.3 = shl i32 0, 41          
        %tmp.4 = icmp ne i32 %tmp.3, 0          
        ret i1 %tmp.4
}

