


target datalayout = "e-p:32:32"
        %struct.Macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.Macroblock*, %struct.Macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define internal fastcc i32 @dct_chroma(i32 %uv, i32 %cr_cbp) nounwind {
cond_true2732.preheader:                
        %tmp2666 = getelementptr %struct.Macroblock, %struct.Macroblock* null, i32 0, i32 13                
        %tmp2674 = trunc i32 0 to i8            
        %tmp2667.us.us = load i64, i64* %tmp2666             
        %tmp2670.us.us = load i64, i64* null         
        %shift.upgrd.1 = zext i8 %tmp2674 to i64                
        %tmp2675.us.us = shl i64 %tmp2670.us.us, %shift.upgrd.1         
        %tmp2675not.us.us = xor i64 %tmp2675.us.us, -1          
        %tmp2676.us.us = and i64 %tmp2667.us.us, %tmp2675not.us.us              
        store i64 %tmp2676.us.us, i64* %tmp2666
        ret i32 0










}

