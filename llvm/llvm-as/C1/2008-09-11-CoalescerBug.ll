


@g_15 = external global i16		

define i32 @func_3(i32 %p_5) nounwind {
entry:
	%0 = srem i32 1, 0		
	%1 = load i16, i16* @g_15, align 2		
	%2 = zext i16 %1 to i32		
	%3 = and i32 %2, 1		
	%4 = tail call i32 (...) @rshift_u_s( i32 1 ) nounwind		
	%5 = icmp slt i32 %4, 2		
	%6 = zext i1 %5 to i32		
	%7 = icmp sge i32 %3, %6		
	%8 = zext i1 %7 to i32		
	%9 = load i16, i16* @g_15, align 2		
	%10 = icmp eq i16 %9, 0		
	%11 = zext i1 %10 to i32		
	%12 = tail call i32 (...) @func_20( i32 1 ) nounwind		
	%13 = icmp sge i32 %11, %12		
	%14 = zext i1 %13 to i32		
	%15 = sub i32 %8, %14		
	%16 = icmp ult i32 %15, 2		
	%17 = zext i1 %16 to i32		
	%18 = icmp ugt i32 %0, 3		
	%or.cond = or i1 false, %18		
	%19 = select i1 %or.cond, i32 0, i32 %0		
	%.0 = lshr i32 %17, %19		
	%20 = tail call i32 (...) @func_7( i32 %.0 ) nounwind		
	ret i32 undef
}

declare i32 @rshift_u_s(...)

declare i32 @func_20(...)

declare i32 @func_7(...)
