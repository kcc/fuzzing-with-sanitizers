





define void @func(<4 x float>* %a, <4 x float>* %b) {
        %tmp1 = getelementptr <4 x float>, <4 x float>* %b, i32 1            
        %tmp = load <4 x float>, <4 x float>* %tmp1          
        %tmp3 = getelementptr <4 x float>, <4 x float>* %a, i32 1            
        %tmp4 = load <4 x float>, <4 x float>* %tmp3         
        %tmp5 = fmul <4 x float> %tmp, %tmp4             
        %tmp8 = load <4 x float>, <4 x float>* %b            
        %tmp9 = fadd <4 x float> %tmp5, %tmp8            
        store <4 x float> %tmp9, <4 x float>* %a
        ret void
}

