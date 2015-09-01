



define <4 x float> @test(<4 x float> %V) {
        %Y = fmul <4 x float> %V, < float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00 >                
        %Z = fmul <4 x float> %Y, < float 1.000000e+00, float 2.000000e+05, float -3.000000e+00, float 4.000000e+00 >               
        ret <4 x float> %Z
}

