


define i32 @test(i32 %a) {
        %tmp1neg = sub i32 0, %a
        %b = icmp sgt i32 %a, -1
        %abs = select i1 %b, i32 %a, i32 %tmp1neg
        ret i32 %abs










}

