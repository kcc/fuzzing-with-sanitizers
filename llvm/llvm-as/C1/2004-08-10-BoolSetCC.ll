


define i1 @test(i1 %V) {
        %Y = icmp ult i1 %V, false              
        ret i1 %Y
}

