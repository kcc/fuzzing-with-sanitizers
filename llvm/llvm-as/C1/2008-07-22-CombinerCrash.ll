


external global i16		
external global <4 x i16>		

declare void @abort()

define void @t() nounwind {
	load i16, i16* @0		
	zext i16 %1 to i64		
	bitcast i64 %2 to <4 x i16>		
	shufflevector <4 x i16> %3, <4 x i16> undef, <4 x i32> zeroinitializer		
	store <4 x i16> %4, <4 x i16>* @1
	ret void
}
