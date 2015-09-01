





define i32 @update(<2 x i64> %val1, <2 x i64> %val2) nounwind readnone {
entry:
	%shuf = shufflevector <2 x i64> %val1, <2 x i64> %val2, <2 x i32> <i32 0, i32 3>
	%bit  = bitcast <2 x i64> %shuf to <4 x i32>
	%res =  extractelement <4 x i32> %bit, i32 3
	ret i32 %res
}
