


define <4 x float> @test(<4 x float> %tmp26, <4 x float> %tmp53) {
        
        %tmp64 = fadd <4 x float> %tmp26, %tmp53         
        %tmp75 = fsub <4 x float> %tmp64, %tmp53         
        ret <4 x float> %tmp75
}
