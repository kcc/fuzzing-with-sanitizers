

define i64 @__fixunstfdi(ppc_fp128 %a) nounwind readnone {
entry:
	%0 = fcmp olt ppc_fp128 %a, 0xM00000000000000000000000000000000		
	br i1 %0, label %bb5, label %bb1

bb1:		
	%1 = fmul ppc_fp128 %a, 0xM3DF00000000000000000000000000000		
	%2 = fptoui ppc_fp128 %1 to i32		
	%3 = zext i32 %2 to i64		
	%4 = shl i64 %3, 32		
	%5 = uitofp i64 %4 to ppc_fp128		
	%6 = fsub ppc_fp128 %a, %5		
	%7 = fcmp olt ppc_fp128 %6, 0xM00000000000000000000000000000000		
	br i1 %7, label %bb2, label %bb3

bb2:		
	%8 = fsub ppc_fp128 0xM80000000000000000000000000000000, %6		
	%9 = fptoui ppc_fp128 %8 to i32		
	%10 = zext i32 %9 to i64		
	%11 = sub i64 %4, %10		
	ret i64 %11

bb3:		
	%12 = fptoui ppc_fp128 %6 to i32		
	%13 = zext i32 %12 to i64		
	%14 = or i64 %13, %4		
	ret i64 %14

bb5:		
	ret i64 0
}
