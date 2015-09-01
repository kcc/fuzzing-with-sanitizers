


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"

define i17 @test1(i17 %a) {
        %tmp = zext i17 %a to i37               
        %tmp21 = lshr i37 %tmp, 8               

        %tmp5 = shl i37 %tmp, 8         

        %tmp.upgrd.32 = or i37 %tmp21, %tmp5            

        %tmp.upgrd.3 = trunc i37 %tmp.upgrd.32 to i17   
        ret i17 %tmp.upgrd.3

}

define i167 @test2(i167 %a) {
        %tmp = zext i167 %a to i577               
        %tmp21 = lshr i577 %tmp, 9               

        %tmp5 = shl i577 %tmp, 8         

        %tmp.upgrd.32 = or i577 %tmp21, %tmp5            

        %tmp.upgrd.3 = trunc i577 %tmp.upgrd.32 to i167  
        ret i167 %tmp.upgrd.3

}
