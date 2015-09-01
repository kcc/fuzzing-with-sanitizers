

define i32 @main() {
	%shamt = add i8 0, 1		
	%shift.upgrd.1 = zext i8 %shamt to i32		
	%t1.s = shl i32 1, %shift.upgrd.1		
	%t2.s = shl i32 1, 4		
	%shift.upgrd.2 = zext i8 %shamt to i32		
	%t1 = shl i32 1, %shift.upgrd.2		
	%t2 = shl i32 1, 5		
	%t2.s.upgrd.3 = shl i64 1, 4		
	%t2.upgrd.4 = shl i64 1, 5		
	%shift.upgrd.5 = zext i8 %shamt to i32		
	%tr1.s = ashr i32 1, %shift.upgrd.5		
	%tr2.s = ashr i32 1, 4		
	%shift.upgrd.6 = zext i8 %shamt to i32		
	%tr1 = lshr i32 1, %shift.upgrd.6		
	%tr2 = lshr i32 1, 5		
	%tr1.l = ashr i64 1, 4		
	%shift.upgrd.7 = zext i8 %shamt to i64		
	%tr2.l = ashr i64 1, %shift.upgrd.7		
	%tr3.l = shl i64 1, 4		
	%shift.upgrd.8 = zext i8 %shamt to i64		
	%tr4.l = shl i64 1, %shift.upgrd.8		
	%tr1.u = lshr i64 1, 5		
	%shift.upgrd.9 = zext i8 %shamt to i64		
	%tr2.u = lshr i64 1, %shift.upgrd.9		
	%tr3.u = shl i64 1, 5		
	%shift.upgrd.10 = zext i8 %shamt to i64		
	%tr4.u = shl i64 1, %shift.upgrd.10		
	ret i32 0
}
