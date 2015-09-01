










define void @foo(<1 x i64>* %x, <1 x i64>* %y) nounwind  {
entry:
	%tmp1 = load <1 x i64>, <1 x i64>* %y, align 8		
	store <1 x i64> %tmp1, <1 x i64>* %x, align 8
	ret void
}
