

define void @BZ2_bzDecompress_bb5_2E_outer_bb35_2E_i_bb54_2E_i(i32*, i32 %c_nblock_used.2.i, i32 %.reload51, i32* %.out, i32* %.out1, i32* %.out2, i32* %.out3) nounwind {
newFuncRoot:
	br label %bb54.i

bb35.i.backedge.exitStub:		
	store i32 %6, i32* %.out
	store i32 %10, i32* %.out1
	store i32 %11, i32* %.out2
	store i32 %12, i32* %.out3
	ret void

bb54.i:		
	%1 = zext i32 %.reload51 to i64		
	%2 = getelementptr i32, i32* %0, i64 %1		
	%3 = load i32, i32* %2, align 4		
	%4 = lshr i32 %3, 8		
	%5 = and i32 %3, 255		
	%6 = add i32 %5, 4		
	%7 = zext i32 %4 to i64		
	%8 = getelementptr i32, i32* %0, i64 %7		
	%9 = load i32, i32* %8, align 4		
	%10 = and i32 %9, 255		
	%11 = lshr i32 %9, 8		
	%12 = add i32 %c_nblock_used.2.i, 5		
	br label %bb35.i.backedge.exitStub
}
