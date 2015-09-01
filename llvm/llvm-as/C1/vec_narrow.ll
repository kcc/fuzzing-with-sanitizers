


define float @test(<4 x float> %A, <4 x float> %B, float %f) {
        %C = insertelement <4 x float> %A, float %f, i32 0               
        %D = fadd <4 x float> %C, %B              
        %E = extractelement <4 x float> %D, i32 0                
        ret float %E
}

