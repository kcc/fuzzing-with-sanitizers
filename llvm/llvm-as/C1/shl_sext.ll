


define i32 @test(i32 %mode.0.i.0) {
        %tmp.79 = trunc i32 %mode.0.i.0 to i8           
        %tmp.80 = sext i8 %tmp.79 to i32                
        %tmp.81 = shl i32 %tmp.80, 24           
        ret i32 %tmp.81
}

define i32 @test2(i32 %mode.0.i.0) {
        %tmp.79 = trunc i32 %mode.0.i.0 to i8           
        %tmp.80 = sext i8 %tmp.79 to i32                
        %tmp.81 = shl i32 %tmp.80, 16           
        %tmp.82 = and i32 %tmp.81, 16711680             
        ret i32 %tmp.82
}

