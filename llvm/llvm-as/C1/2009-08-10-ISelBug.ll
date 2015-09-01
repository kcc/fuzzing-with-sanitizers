

define float @t1(i32 %v0) nounwind {
entry:
	store i32 undef, i32* undef, align 4
	%0 = load [4 x i8]*, [4 x i8]** undef, align 4		
	%1 = load i8, i8* undef, align 1		
	%2 = zext i8 %1 to i32		
	%3 = getelementptr [4 x i8], [4 x i8]* %0, i32 %v0, i32 0		
	%4 = load i8, i8* %3, align 1		
	%5 = zext i8 %4 to i32		
	%6 = sub i32 %5, %2		
	%7 = sitofp i32 %6 to float		
	ret float %7
}
