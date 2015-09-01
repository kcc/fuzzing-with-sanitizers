


declare i64 @llvm.ctpop.i64(i64)

declare i32 @llvm.ctpop.i32(i32)

declare i16 @llvm.ctpop.i16(i16)

declare i8 @llvm.ctpop.i8(i8)

define void @ctpoptest(i8 %A, i16 %B, i32 %C, i64 %D, i8* %AP, i16* %BP, i32* %CP, i64* %DP) {
	%a = call i8 @llvm.ctpop.i8( i8 %A )		
	%b = call i16 @llvm.ctpop.i16( i16 %B )		
	%c = call i32 @llvm.ctpop.i32( i32 %C )		
	%d = call i64 @llvm.ctpop.i64( i64 %D )		
	store i8 %a, i8* %AP
	store i16 %b, i16* %BP
	store i32 %c, i32* %CP
	store i64 %d, i64* %DP
	ret void
}

declare i64 @llvm.ctlz.i64(i64, i1)

declare i32 @llvm.ctlz.i32(i32, i1)

declare i16 @llvm.ctlz.i16(i16, i1)

declare i8 @llvm.ctlz.i8(i8, i1)

define void @ctlztest(i8 %A, i16 %B, i32 %C, i64 %D, i8* %AP, i16* %BP, i32* %CP, i64* %DP) {
	%a = call i8 @llvm.ctlz.i8( i8 %A, i1 true )		
	%b = call i16 @llvm.ctlz.i16( i16 %B, i1 true )		
	%c = call i32 @llvm.ctlz.i32( i32 %C, i1 true )		
	%d = call i64 @llvm.ctlz.i64( i64 %D, i1 true )		
	store i8 %a, i8* %AP
	store i16 %b, i16* %BP
	store i32 %c, i32* %CP
	store i64 %d, i64* %DP
	ret void
}

declare i64 @llvm.cttz.i64(i64, i1)

declare i32 @llvm.cttz.i32(i32, i1)

declare i16 @llvm.cttz.i16(i16, i1)

declare i8 @llvm.cttz.i8(i8, i1)

define void @cttztest(i8 %A, i16 %B, i32 %C, i64 %D, i8* %AP, i16* %BP, i32* %CP, i64* %DP) {
	%a = call i8 @llvm.cttz.i8( i8 %A, i1 true )		
	%b = call i16 @llvm.cttz.i16( i16 %B, i1 true )		
	%c = call i32 @llvm.cttz.i32( i32 %C, i1 true )		
	%d = call i64 @llvm.cttz.i64( i64 %D, i1 true )		
	store i8 %a, i8* %AP
	store i16 %b, i16* %BP
	store i32 %c, i32* %CP
	store i64 %d, i64* %DP
	ret void
}
