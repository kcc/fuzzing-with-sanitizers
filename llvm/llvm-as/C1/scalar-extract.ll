





define void @foo(<2 x i16>* %A, <2 x i16>* %B) {
entry:
	%tmp1 = load <2 x i16>, <2 x i16>* %A		
	store <2 x i16> %tmp1, <2 x i16>* %B
	ret void
}

