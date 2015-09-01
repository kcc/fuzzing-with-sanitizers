


define <2 x i64> @update(<2 x i64> %val) nounwind readnone {
entry:
	%shr = lshr <2 x i64> %val, < i64 2, i64 3 >
	ret <2 x i64> %shr
}
