

define i32 @test() {
        %tmp203 = icmp eq i32 1, 2              
        %tmp203.upgrd.1 = zext i1 %tmp203 to i32                
        ret i32 %tmp203.upgrd.1
}

