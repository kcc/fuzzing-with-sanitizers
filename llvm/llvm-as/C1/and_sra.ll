


define i32 @test1(i32 %mode.0.i.0) {
        %tmp.79 = bitcast i32 %mode.0.i.0 to i32                
        %tmp.80 = ashr i32 %tmp.79, 15          
        %tmp.81 = and i32 %tmp.80, 24           
        ret i32 %tmp.81
}

define i32 @test2(i32 %mode.0.i.0) {
        %tmp.79 = bitcast i32 %mode.0.i.0 to i32                
        %tmp.80 = ashr i32 %tmp.79, 15          
        %tmp.81 = lshr i32 %mode.0.i.0, 16              
        %tmp.82 = bitcast i32 %tmp.81 to i32            
        %tmp.83 = and i32 %tmp.80, %tmp.82              
        ret i32 %tmp.83
}

define i32 @test3(i32 %specbits.6.1) {
        %tmp.2540 = ashr i32 %specbits.6.1, 11          
        %tmp.2541 = bitcast i32 %tmp.2540 to i32                
        %tmp.2542 = shl i32 %tmp.2541, 13               
        %tmp.2543 = and i32 %tmp.2542, 8192             
        ret i32 %tmp.2543
}

