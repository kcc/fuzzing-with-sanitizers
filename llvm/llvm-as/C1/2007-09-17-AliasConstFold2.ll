


@A = weak alias void ()* @B		

define weak void @B() {
       ret void
}

define i32 @active() {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%tmp1 = icmp ne void ()* @A, null		
	%tmp12 = zext i1 %tmp1 to i32		
	ret i32 %tmp12
}
