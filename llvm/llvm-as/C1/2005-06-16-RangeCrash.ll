


define i1 @test() {
        %tmp.26 = sdiv i32 0, -2147483648               
        %tmp.27 = icmp eq i32 %tmp.26, 0                
        ret i1 %tmp.27
}

