






	%struct.SHA512_CTX = type { [8 x i64], i64, i64, %struct.anon, i32, i32 }
	%struct.anon = type { [16 x i64] }
@K512 = external constant [80 x i64], align 32		

define fastcc void @sha512_block_data_order(%struct.SHA512_CTX* nocapture %ctx, i8* nocapture %in, i64 %num) nounwind ssp {
entry:
	br label %bb349

bb349:		
	%e.0489 = phi i64 [ 0, %entry ], [ %e.0, %bb349 ]		
	%b.0472 = phi i64 [ 0, %entry ], [ %87, %bb349 ]		
	%asmtmp356 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 41, i64 %e.0489) nounwind		
	%0 = xor i64 0, %asmtmp356		
	%1 = add i64 0, %0		
	%2 = add i64 %1, 0		
	%3 = add i64 %2, 0		
	%4 = add i64 %3, 0		
	%asmtmp372 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 34, i64 %4) nounwind		
	%asmtmp373 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 39, i64 %4) nounwind		
	%5 = xor i64 %asmtmp372, 0		
	%6 = xor i64 0, %b.0472		
	%7 = and i64 %4, %6		
	%8 = xor i64 %7, 0		
	%9 = add i64 0, %8		
	%10 = add i64 %9, 0		
	%asmtmp377 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 61, i64 0) nounwind		
	%11 = xor i64 0, %asmtmp377		
	%12 = add i64 0, %11		
	%13 = add i64 %12, 0		
	%not381 = xor i64 0, -1		
	%14 = and i64 %e.0489, %not381		
	%15 = xor i64 0, %14		
	%16 = add i64 %15, 0		
	%17 = add i64 %16, %13		
	%18 = add i64 %17, 0		
	%19 = add i64 %18, 0		
	%20 = add i64 %19, %b.0472		
	%21 = add i64 %19, 0		
	%22 = add i64 %21, 0		
	%23 = add i32 0, 12		
	%24 = and i32 %23, 12		
	%25 = zext i32 %24 to i64		
	%26 = getelementptr [16 x i64], [16 x i64]* null, i64 0, i64 %25		
	%27 = add i64 0, %e.0489		
	%28 = add i64 %27, 0		
	%29 = add i64 %28, 0		
	%30 = add i64 %29, 0		
	%31 = and i64 %10, %4		
	%32 = xor i64 0, %31		
	%33 = add i64 %30, 0		
	%34 = add i64 %30, %32		
	%35 = add i64 %34, 0		
	%36 = and i64 %33, %20		
	%37 = xor i64 %36, 0		
	%38 = add i64 %37, 0		
	%39 = add i64 %38, 0		
	%40 = add i64 %39, 0		
	%41 = add i64 %40, 0		
	%42 = add i64 %41, %4		
	%43 = or i32 0, 6		
	%44 = and i32 %43, 14		
	%45 = zext i32 %44 to i64		
	%46 = getelementptr [16 x i64], [16 x i64]* null, i64 0, i64 %45		
	%not417 = xor i64 %42, -1		
	%47 = and i64 %20, %not417		
	%48 = xor i64 0, %47		
	%49 = getelementptr [80 x i64], [80 x i64]* @K512, i64 0, i64 0		
	%50 = load i64, i64* %49, align 8		
	%51 = add i64 %48, 0		
	%52 = add i64 %51, 0		
	%53 = add i64 %52, 0		
	%54 = add i64 %53, %50		
	%asmtmp420 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 34, i64 0) nounwind		
	%asmtmp421 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 39, i64 0) nounwind		
	%55 = xor i64 %asmtmp420, 0		
	%56 = xor i64 %55, %asmtmp421		
	%57 = add i64 %54, %10		
	%58 = add i64 %54, 0		
	%59 = add i64 %58, %56		
	%60 = or i32 0, 7		
	%61 = and i32 %60, 15		
	%62 = zext i32 %61 to i64		
	%63 = getelementptr [16 x i64], [16 x i64]* null, i64 0, i64 %62		
	%64 = load i64, i64* null, align 8		
	%65 = lshr i64 %64, 6		
	%66 = xor i64 0, %65		
	%67 = xor i64 %66, 0		
	%68 = load i64, i64* %46, align 8		
	%69 = load i64, i64* null, align 8		
	%70 = add i64 %68, 0		
	%71 = add i64 %70, %67		
	%72 = add i64 %71, %69		
	%asmtmp427 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 18, i64 %57) nounwind		
	%asmtmp428 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 41, i64 %57) nounwind		
	%73 = xor i64 %asmtmp427, 0		
	%74 = xor i64 %73, %asmtmp428		
	%75 = and i64 %57, %42		
	%not429 = xor i64 %57, -1		
	%76 = and i64 %33, %not429		
	%77 = xor i64 %75, %76		
	%78 = getelementptr [80 x i64], [80 x i64]* @K512, i64 0, i64 0		
	%79 = load i64, i64* %78, align 16		
	%80 = add i64 %77, %20		
	%81 = add i64 %80, %72		
	%82 = add i64 %81, %74		
	%83 = add i64 %82, %79		
	%asmtmp432 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 34, i64 %59) nounwind		
	%asmtmp433 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 39, i64 %59) nounwind		
	%84 = xor i64 %asmtmp432, 0		
	%85 = xor i64 %84, %asmtmp433		
	%86 = add i64 %83, %22		
	%87 = add i64 0, %85		
	%asmtmp435 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 8, i64 0) nounwind		
	%88 = xor i64 0, %asmtmp435		
	%89 = load i64, i64* null, align 8		
	%asmtmp436 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 19, i64 %89) nounwind		
	%asmtmp437 = call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 61, i64 %89) nounwind		
	%90 = lshr i64 %89, 6		
	%91 = xor i64 %asmtmp436, %90		
	%92 = xor i64 %91, %asmtmp437		
	%93 = load i64, i64* %63, align 8		
	%94 = load i64, i64* null, align 8		
	%95 = add i64 %93, %88		
	%96 = add i64 %95, %92		
	%97 = add i64 %96, %94		
	store i64 %97, i64* %63, align 8
	%98 = and i64 %86, %57		
	%not441 = xor i64 %86, -1		
	%99 = and i64 %42, %not441		
	%100 = xor i64 %98, %99		
	%101 = add i64 %100, %33		
	%102 = add i64 %101, %97		
	%103 = add i64 %102, 0		
	%104 = add i64 %103, 0		
	%e.0 = add i64 %104, %35		
	br label %bb349
}
