

define i32 @test(i1 %C, i32 %tmp.15) {
        %tmp.16 = select i1 %C, i32 8, i32 1            
        %tmp.18 = udiv i32 %tmp.15, %tmp.16             
        ret i32 %tmp.18
}

