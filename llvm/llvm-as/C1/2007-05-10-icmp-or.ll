
define i1 @test(i32 %tmp9) {
        %tmp20 = icmp ugt i32 %tmp9, 255                
        %tmp11.not = icmp sgt i32 %tmp9, 255            
        %bothcond = or i1 %tmp20, %tmp11.not            
        ret i1 %bothcond
}

