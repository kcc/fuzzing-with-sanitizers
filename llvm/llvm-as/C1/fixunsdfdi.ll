


define hidden i64 @__fixunsdfdi(double %x) nounwind readnone {
entry:
	%x14 = bitcast double %x to i64		
	br i1 true, label %bb3, label %bb10

bb3:		
	br i1 true, label %bb5, label %bb7

bb5:		
	%u.in.mask = and i64 %x14, -4294967296		
	%.ins = or i64 0, %u.in.mask		
	%0 = bitcast i64 %.ins to double		
	%1 = fsub double %x, %0		
	%2 = fptosi double %1 to i32		
	%3 = add i32 %2, 0		
	%4 = zext i32 %3 to i64		
	%5 = shl i64 %4, 32		
	%6 = or i64 %5, 0		
	ret i64 %6

bb7:		
	ret i64 0

bb10:		
	ret i64 0
}



