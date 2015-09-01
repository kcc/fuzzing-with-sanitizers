
define i32 @main(i32 %argc, i8** %argv) {
entry:
	br label %bb7

bb7:		
	%tmp39 = load <4 x float>, <4 x float>* null		
	%tmp40 = fadd <4 x float> %tmp39, < float 2.000000e+00, float 3.000000e+00, float 1.000000e+00, float 0.000000e+00 >		
	store <4 x float> zeroinitializer, <4 x float>* null
	br i1 false, label %bb7, label %bb56

bb56:		
	ret i32 0
}
