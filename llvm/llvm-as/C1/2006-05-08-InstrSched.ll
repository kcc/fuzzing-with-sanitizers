

@A = external global i16*		
@B = external global i32		
@C = external global i32		

define void @test() {
	%tmp = load i16*, i16** @A		
	%tmp1 = getelementptr i16, i16* %tmp, i32 1		
	%tmp.upgrd.1 = load i16, i16* %tmp1		
	%tmp3 = zext i16 %tmp.upgrd.1 to i32		
	%tmp.upgrd.2 = load i32, i32* @B		
	%tmp4 = and i32 %tmp.upgrd.2, 16		
	%tmp5 = load i32, i32* @C		
	%tmp6 = trunc i32 %tmp4 to i8		
	%shift.upgrd.3 = zext i8 %tmp6 to i32		
	%tmp7 = shl i32 %tmp5, %shift.upgrd.3		
	%tmp9 = xor i8 %tmp6, 16		
	%shift.upgrd.4 = zext i8 %tmp9 to i32		
	%tmp11 = lshr i32 %tmp3, %shift.upgrd.4		
	%tmp12 = or i32 %tmp11, %tmp7		
	store i32 %tmp12, i32* @C
	ret void
}

