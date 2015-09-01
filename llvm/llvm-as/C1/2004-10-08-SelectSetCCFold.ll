

define i1 @test(i1 %C, i1 %D, i32 %X, i32 %Y) {
        %E = icmp slt i32 %X, %Y                
        %F = select i1 %C, i1 %D, i1 %E         
        ret i1 %F
}

