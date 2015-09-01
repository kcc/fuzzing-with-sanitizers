

define fastcc void @glgVectorFloatConversion() nounwind  {
	%tmp12745 = load <4 x float>, <4 x float>* null, align 16		
	%tmp12773 = insertelement <4 x float> %tmp12745, float 1.000000e+00, i32 1		
	%tmp12774 = insertelement <4 x float> %tmp12773, float 0.000000e+00, i32 2		
	%tmp12775 = insertelement <4 x float> %tmp12774, float 1.000000e+00, i32 3		
	store <4 x float> %tmp12775, <4 x float>* null, align 16
	unreachable
}
