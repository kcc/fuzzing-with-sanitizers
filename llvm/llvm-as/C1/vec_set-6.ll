




define <4 x float> @test(float %a, float %b, float %c) nounwind {
        %tmp = insertelement <4 x float> zeroinitializer, float %a, i32 1               
        %tmp8 = insertelement <4 x float> %tmp, float %b, i32 2         
        %tmp10 = insertelement <4 x float> %tmp8, float %c, i32 3               
        ret <4 x float> %tmp10
}

