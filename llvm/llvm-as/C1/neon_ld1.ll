






define void @t1(<2 x i32>* %r, <4 x i16>* %a, <4 x i16>* %b) nounwind {
entry:
	%0 = load <4 x i16>, <4 x i16>* %a, align 8		
	%1 = load <4 x i16>, <4 x i16>* %b, align 8		
	%2 = add <4 x i16> %0, %1		
	%3 = bitcast <4 x i16> %2 to <2 x i32>		
	store <2 x i32> %3, <2 x i32>* %r, align 8
	ret void
}






define <2 x i32> @t2(<4 x i16>* %a, <4 x i16>* %b) nounwind readonly {
entry:
	%0 = load <4 x i16>, <4 x i16>* %a, align 8		
	%1 = load <4 x i16>, <4 x i16>* %b, align 8		
	%2 = sub <4 x i16> %0, %1		
	%3 = bitcast <4 x i16> %2 to <2 x i32>		
	ret <2 x i32> %3
}
