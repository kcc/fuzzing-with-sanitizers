




define void @t(<4 x float> %A) {
	%tmp1277 = fsub <4 x float> < float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00 >, %A
	store <4 x float> %tmp1277, <4 x float>* null
	ret void
}

define <4 x float> @t1(<4 x float> %a, <4 x float> %b) {
entry:
	%tmp9 = bitcast <4 x float> %a to <4 x i32>		
	%tmp10 = bitcast <4 x float> %b to <4 x i32>		
	%tmp11 = xor <4 x i32> %tmp9, %tmp10		
	%tmp13 = bitcast <4 x i32> %tmp11 to <4 x float>		
	ret <4 x float> %tmp13
}

define <2 x double> @t2(<2 x double> %a, <2 x double> %b) {
entry:
	%tmp9 = bitcast <2 x double> %a to <2 x i64>		
	%tmp10 = bitcast <2 x double> %b to <2 x i64>		
	%tmp11 = and <2 x i64> %tmp9, %tmp10		
	%tmp13 = bitcast <2 x i64> %tmp11 to <2 x double>		
	ret <2 x double> %tmp13
}

define void @t3(<4 x float> %a, <4 x float> %b, <4 x float>* %c, <4 x float>* %d) {
entry:
	%tmp3 = load <4 x float>, <4 x float>* %c		
	%tmp11 = bitcast <4 x float> %a to <4 x i32>		
	%tmp12 = bitcast <4 x float> %b to <4 x i32>		
	%tmp13 = xor <4 x i32> %tmp11, < i32 -1, i32 -1, i32 -1, i32 -1 >		
	%tmp14 = and <4 x i32> %tmp12, %tmp13		
	%tmp27 = bitcast <4 x float> %tmp3 to <4 x i32>		
	%tmp28 = or <4 x i32> %tmp14, %tmp27		
	%tmp30 = bitcast <4 x i32> %tmp28 to <4 x float>		
	store <4 x float> %tmp30, <4 x float>* %d
	ret void
}
