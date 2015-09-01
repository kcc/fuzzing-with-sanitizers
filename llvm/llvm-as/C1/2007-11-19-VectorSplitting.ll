




define void @execute_shader(<4 x float>* %OUT, <4 x float>* %IN, <4 x float>*
%CONST) {
entry:
        %input2 = load <4 x float>, <4 x float>* null, align 16               
       	%shuffle7 = shufflevector <4 x float> %input2, <4 x float> < float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00 >, <4 x i32> < i32 2, i32 2, i32 2, i32 2 >		

        %mul1 = fmul <4 x float> %shuffle7, zeroinitializer              
        %add2 = fadd <4 x float> %mul1, %input2          
        store <4 x float> %add2, <4 x float>* null, align 16
        ret void
}
