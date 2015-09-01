





@B = external global i32		
@C = external global i16*		

define void @test(i32 %A) {
	%A.upgrd.1 = trunc i32 %A to i8		
	%tmp2 = load i32, i32* @B		
	%tmp3 = and i8 %A.upgrd.1, 16		
	%shift.upgrd.2 = zext i8 %tmp3 to i32		
	%tmp4 = shl i32 %tmp2, %shift.upgrd.2		
	store i32 %tmp4, i32* @B
	%tmp6 = lshr i32 %A, 3		
	%tmp = load i16*, i16** @C		
	%tmp8 = ptrtoint i16* %tmp to i32		
	%tmp9 = add i32 %tmp8, %tmp6		
	%tmp9.upgrd.3 = inttoptr i32 %tmp9 to i16*		
	store i16* %tmp9.upgrd.3, i16** @C
	ret void
}

