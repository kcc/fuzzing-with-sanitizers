




define void @convert(<2 x i32>* %dst.addr, i64 %src) nounwind {
entry:
	%conv = bitcast i64 %src to <2 x i32>
	%xor = xor <2 x i32> %conv, < i32 255, i32 32767 >
	store <2 x i32> %xor, <2 x i32>* %dst.addr
	ret void
}
