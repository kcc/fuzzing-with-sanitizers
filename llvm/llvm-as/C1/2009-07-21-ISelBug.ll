


@"\01LC" = external constant [36 x i8], align 1		

define i32 @t(i32, ...) nounwind {
entry:


	%1 = load i8*, i8** undef, align 4		
	%2 = getelementptr i8, i8* %1, i32 4		
	%3 = getelementptr i8, i8* %1, i32 8		
	%4 = bitcast i8* %2 to i32*		
	%5 = load i32, i32* %4, align 4		
	%6 = trunc i32 %5 to i8		
	%7 = getelementptr i8, i8* %1, i32 12		
	%8 = bitcast i8* %3 to i32*		
	%9 = load i32, i32* %8, align 4		
	%10 = trunc i32 %9 to i16		
	%11 = bitcast i8* %7 to i32*		
	%12 = load i32, i32* %11, align 4		
	%13 = trunc i32 %12 to i16		
	%14 = load i32, i32* undef, align 4		
	%15 = sext i8 %6 to i32		
	%16 = sext i16 %10 to i32		
	%17 = sext i16 %13 to i32		
	%18 = call  i32 (i8*, ...) @printf(i8* getelementptr ([36 x i8], [36 x i8]* @"\01LC", i32 0, i32 0), i32 -128, i32 0, i32 %15, i32 %16, i32 %17, i32 0, i32 %14) nounwind		
	%19 = add i32 0, %15		
	%20 = add i32 %19, %16		
	%21 = add i32 %20, %14		
	%22 = add i32 %21, %17		
	%23 = add i32 %22, 0		
	ret i32 %23
}

declare i32 @printf(i8* nocapture, ...) nounwind
