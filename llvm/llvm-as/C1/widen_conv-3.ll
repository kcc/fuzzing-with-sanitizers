




define void @convert(<2 x float>* %dst.addr, <2 x i16> %src) nounwind {
entry:
	%val = sitofp <2 x i16> %src to <2 x float>
	store <2 x float> %val, <2 x float>* %dst.addr
	ret void
}
