







declare i32 @printf(i8*, i32, float)

define i32 @testissue(i32 %i, float %x, float %y) {
	br label %bb1

bb1:		
	%x1 = fmul float %x, %y		
	%y1 = fmul float %y, 7.500000e-01		
	%z1 = fadd float %x1, %y1		
	%x2 = fmul float %x, 5.000000e-01		
	%y2 = fmul float %y, 0x3FECCCCCC0000000		
	%z2 = fadd float %x2, %y2		
	%z3 = fadd float %z1, %z2		
	%i1 = shl i32 %i, 3		
	%j1 = add i32 %i, 7		
	%m1 = add i32 %i1, %j1		
	%b = icmp sle i32 %m1, 6		
	br i1 %b, label %bb1, label %bb2

bb2:		
	%Msg = inttoptr i64 0 to i8*		
	call i32 @printf( i8* %Msg, i32 %m1, float %z3 )		
	ret i32 0
}
