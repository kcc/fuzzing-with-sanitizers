




define i32 @test(i32 %j.0.0.i) {
        %tmp.85.i = and i32 %j.0.0.i, 7         
        %tmp.161278.i = bitcast i32 %tmp.85.i to i32            
        %tmp.5.i77.i = lshr i32 %tmp.161278.i, 3                
        ret i32 %tmp.5.i77.i
}


