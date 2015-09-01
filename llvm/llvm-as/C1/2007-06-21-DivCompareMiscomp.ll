


define i1 @test(i32 %tmp468) {
        %tmp470 = udiv i32 %tmp468, 4           
        %tmp475 = icmp ult i32 %tmp470, 1073741824              
        ret i1 %tmp475
}

