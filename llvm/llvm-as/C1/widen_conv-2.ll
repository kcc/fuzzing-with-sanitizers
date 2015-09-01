






define void @convert(<2 x i32>* %dst.addr, <2 x i16> %src) nounwind {
entry:
	%signext = sext <2 x i16> %src to <2 x i32>		
	store <2 x i32> %signext, <2 x i32>* %dst.addr
	ret void
}
