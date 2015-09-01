









%T1 = type opaque
%T2 = type i32
@GVar = global i32* null		

define void @foo(i32* %X) {
	%X.upgrd.1 = bitcast i32* %X to %T1*		
	ret void
}


