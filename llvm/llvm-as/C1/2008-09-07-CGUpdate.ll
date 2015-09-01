

define internal fastcc i32 @hash(i32* %ts, i32 %mod) nounwind {
entry:
	unreachable
}

define void @encode(i32* %m, i32* %ts, i32* %new) nounwind {
entry:
	%0 = call fastcc i32 @hash( i32* %ts, i32 0 ) nounwind		
	unreachable
}
