

define void @test(<8 x i16>* %b, i16 %a0, i16 %a1, i16 %a2, i16 %a3, i16 %a4, i16 %a5, i16 %a6, i16 %a7) nounwind {
        %tmp = insertelement <8 x i16> zeroinitializer, i16 %a0, i32 0          
        %tmp2 = insertelement <8 x i16> %tmp, i16 %a1, i32 1            
        %tmp4 = insertelement <8 x i16> %tmp2, i16 %a2, i32 2           
        %tmp6 = insertelement <8 x i16> %tmp4, i16 %a3, i32 3           
        %tmp8 = insertelement <8 x i16> %tmp6, i16 %a4, i32 4           
        %tmp10 = insertelement <8 x i16> %tmp8, i16 %a5, i32 5          
        %tmp12 = insertelement <8 x i16> %tmp10, i16 %a6, i32 6         
        %tmp14 = insertelement <8 x i16> %tmp12, i16 %a7, i32 7         
        store <8 x i16> %tmp14, <8 x i16>* %b
        ret void
}

