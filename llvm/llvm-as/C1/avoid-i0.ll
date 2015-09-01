





define i32 @int80(i8 signext %p_71) nounwind {
entry:
	br label %bb

bb:		
	%p_71_addr.0 = phi i8 [ %p_71, %entry ], [ %0, %bb6 ]		
	br i1 undef, label %bb4, label %bb1

bb1:		
	ret i32 0

bb4:		
	br i1 undef, label %bb6, label %bb4

bb6:		
	%0 = and i8 0, 0		
	br label %bb
}

@x = common global i32 0		

define signext i8 @safe_sub_func_int32_t_s_s(i32 %_si1, i8 signext %_si2) nounwind {
entry:
	%_si1_addr = alloca i32		
	%_si2_addr = alloca i8		
	%retval = alloca i32		
	%0 = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 %_si1, i32* %_si1_addr
	store i8 %_si2, i8* %_si2_addr
	%1 = load i8, i8* %_si2_addr, align 1		
	%2 = sext i8 %1 to i32		
	%3 = load i32, i32* %_si1_addr, align 4		
	%4 = xor i32 %2, %3		
	%5 = load i8, i8* %_si2_addr, align 1		
	%6 = sext i8 %5 to i32		
	%7 = sub i32 7, %6		
	%8 = load i32, i32* %_si1_addr, align 4		
	%9 = shl i32 %8, %7		
	%10 = and i32 %4, %9		
	%11 = icmp slt i32 %10, 0		
	%12 = zext i1 %11 to i32		
	store i32 %12, i32* %0, align 4
	%13 = load i32, i32* %0, align 4		
	store i32 %13, i32* %retval, align 4
	br label %return

return:		
	%retval1 = load i32, i32* %retval		
	%retval12 = trunc i32 %retval1 to i8		
	ret i8 %retval12
}

define i32 @safe_sub_func_uint64_t_u_u(i32 %_ui1, i32 %_ui2) nounwind {
entry:
	%_ui1_addr = alloca i32		
	%_ui2_addr = alloca i32		
	%retval = alloca i32		
	%0 = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 %_ui1, i32* %_ui1_addr
	store i32 %_ui2, i32* %_ui2_addr
	%1 = load i32, i32* %_ui1_addr, align 4		
	%2 = sub i32 %1, 1		
	store i32 %2, i32* %0, align 4
	%3 = load i32, i32* %0, align 4		
	store i32 %3, i32* %retval, align 4
	br label %return

return:		
	%retval1 = load i32, i32* %retval		
	ret i32 %retval1
}

define void @int87(i8 signext %p_48, i8 signext %p_49) nounwind {
entry:
	%p_48_addr = alloca i8		
	%p_49_addr = alloca i8		
	%l_52 = alloca i32		
	%vol.0 = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	store i8 %p_48, i8* %p_48_addr
	store i8 %p_49, i8* %p_49_addr
	br label %bb4

bb:		
	%0 = load volatile i32, i32* @x, align 4		
	store i32 %0, i32* %vol.0, align 4
	store i32 0, i32* %l_52, align 4
	br label %bb2

bb1:		
	%1 = load i32, i32* %l_52, align 4		
	%2 = call i32 @safe_sub_func_uint64_t_u_u(i32 %1, i32 1) nounwind		
	store i32 %2, i32* %l_52, align 4
	br label %bb2

bb2:		
	%3 = load i32, i32* %l_52, align 4		
	%4 = icmp eq i32 %3, 0		
	br i1 %4, label %bb1, label %bb3

bb3:		
	%5 = load i32, i32* %l_52, align 4		
	%6 = call signext i8 @safe_sub_func_int32_t_s_s(i32 %5, i8 signext 1) nounwind		
	%7 = sext i8 %6 to i32		
	store i32 %7, i32* %l_52, align 4
	br label %bb4

bb4:		
	%8 = load i32, i32* %l_52, align 4		
	%9 = icmp ne i32 %8, 0		
	br i1 %9, label %bb, label %bb5

bb5:		
	br label %return

return:		
	ret void
}
