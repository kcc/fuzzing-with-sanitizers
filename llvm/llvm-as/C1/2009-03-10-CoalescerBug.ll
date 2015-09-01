


	%struct.WINDOW = type { i16, i16, i16, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct.WINDOW*, %struct.pdat, i16, %struct.cchar_t }
	%struct.cchar_t = type { i32, [5 x i32] }
	%struct.ldat = type { %struct.cchar_t*, i16, i16, i16 }
	%struct.pdat = type { i16, i16, i16, i16, i16, i16 }

define i32 @pnoutrefresh(%struct.WINDOW* %win, i32 %pminrow, i32 %pmincol, i32 %sminrow, i32 %smincol, i32 %smaxrow, i32 %smaxcol) nounwind optsize ssp {
entry:
	%0 = load i16, i16* null, align 4		
	%1 = icmp sgt i16 0, %0		
	br i1 %1, label %bb12, label %bb13

bb12:		
	%2 = sext i16 %0 to i32		
	%3 = sub i32 %2, 0		
	%4 = add i32 %3, %smaxrow		
	%5 = trunc i32 %4 to i16		
	%6 = add i16 0, %5		
	br label %bb13

bb13:		
	%pmaxrow.0 = phi i16 [ %6, %bb12 ], [ 0, %entry ]		
	%smaxrow_addr.0 = phi i32 [ %4, %bb12 ], [ %smaxrow, %entry ]		
	%7 = trunc i32 %smaxrow_addr.0 to i16		
	ret i32 0
}
