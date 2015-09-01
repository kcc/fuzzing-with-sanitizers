






@size20 = external global i32		
@in5 = external global i8*		

define i32 @compare(i8* %a, i8* %b) nounwind {
	%tmp = bitcast i8* %a to i32*		
	%tmp1 = bitcast i8* %b to i32*		
	%tmp.upgrd.1 = load i32, i32* @size20		
	%tmp.upgrd.2 = load i8*, i8** @in5		
	%tmp3 = load i32, i32* %tmp1		
	%gep.upgrd.3 = zext i32 %tmp3 to i64		
	%tmp4 = getelementptr i8, i8* %tmp.upgrd.2, i64 %gep.upgrd.3		
	%tmp7 = load i32, i32* %tmp		
	%gep.upgrd.4 = zext i32 %tmp7 to i64		
	%tmp8 = getelementptr i8, i8* %tmp.upgrd.2, i64 %gep.upgrd.4		
	%tmp.upgrd.5 = tail call i32 @memcmp( i8* %tmp8, i8* %tmp4, i32 %tmp.upgrd.1 )		
	ret i32 %tmp.upgrd.5
}

declare i32 @memcmp(i8*, i8*, i32)
