

define float @test(<4 x float> %V) {
        %V2 = insertelement <4 x float> %V, float 1.000000e+00, i32 3           
        %R = extractelement <4 x float> %V2, i32 2              
        ret float %R
}

