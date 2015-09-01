












define void @t1(<4 x i32>* %r, <2 x i64>* %a, <2 x i64>* %b) nounwind {
entry:
	%0 = load <2 x i64>, <2 x i64>* %a, align 16		
	%1 = load <2 x i64>, <2 x i64>* %b, align 16		
	%2 = add <2 x i64> %0, %1		
	%3 = bitcast <2 x i64> %2 to <4 x i32>		
	store <4 x i32> %3, <4 x i32>* %r, align 16
	ret void
}













define <4 x i32> @t2(<2 x i64>* %a, <2 x i64>* %b) nounwind readonly {
entry:
	%0 = load <2 x i64>, <2 x i64>* %a, align 16		
	%1 = load <2 x i64>, <2 x i64>* %b, align 16		
	%2 = sub <2 x i64> %0, %1		
	%3 = bitcast <2 x i64> %2 to <4 x i32>		
	ret <4 x i32> %3
}







define void @t3(<4 x i32>* %r, <2 x i64>* %a, <2 x i64>* %b) nounwind {
entry:
	%0 = load <2 x i64>, <2 x i64>* %a, align 8
	%1 = load <2 x i64>, <2 x i64>* %b, align 8
	%2 = add <2 x i64> %0, %1
	%3 = bitcast <2 x i64> %2 to <4 x i32>
	store <4 x i32> %3, <4 x i32>* %r, align 8
	ret void
}
