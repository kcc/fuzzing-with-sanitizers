

define i32 @test1(i64 %a) nounwind {
        %tmp29 = lshr i64 %a, 24                
        %tmp23 = trunc i64 %tmp29 to i32                
        %tmp410 = lshr i32 %tmp23, 9            
        %tmp45 = trunc i32 %tmp410 to i16               
        %tmp456 = sext i16 %tmp45 to i32                
        ret i32 %tmp456





}

