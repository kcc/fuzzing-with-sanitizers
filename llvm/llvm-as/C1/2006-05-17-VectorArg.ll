

define <4 x float> @opRSQ(<4 x float> %a) nounwind {
entry:
	%tmp2 = extractelement <4 x float> %a, i32 3		
	%abscond = fcmp oge float %tmp2, -0.000000e+00		
	%abs = select i1 %abscond, float %tmp2, float 0.000000e+00		
	%tmp3 = tail call float @llvm.sqrt.f32( float %abs )		
	%tmp4 = fdiv float 1.000000e+00, %tmp3		
	%tmp11 = insertelement <4 x float> zeroinitializer, float %tmp4, i32 3		
	ret <4 x float> %tmp11
}

declare float @llvm.sqrt.f32(float)

