

@Te0 = external global [256 x i32]		
@Te1 = external global [256 x i32]		
@Te3 = external global [256 x i32]		

define void @t(i8* nocapture %in, i8* nocapture %out, i32* nocapture %rk, i32 %r) nounwind ssp {
entry:
	%0 = load i32, i32* %rk, align 4		
	%1 = getelementptr i32, i32* %rk, i64 1		
	%2 = load i32, i32* %1, align 4		
	%tmp15 = add i32 %r, -1		
	%tmp.16 = zext i32 %tmp15 to i64		
	br label %bb



bb:		
	%indvar = phi i64 [ 0, %entry ], [ %indvar.next, %bb1 ]		
	%s1.0 = phi i32 [ %2, %entry ], [ %56, %bb1 ]		
	%s0.0 = phi i32 [ %0, %entry ], [ %43, %bb1 ]		
	%tmp18 = shl i64 %indvar, 4		
	%rk26 = bitcast i32* %rk to i8*		
	%3 = lshr i32 %s0.0, 24		
	%4 = zext i32 %3 to i64		
	%5 = getelementptr [256 x i32], [256 x i32]* @Te0, i64 0, i64 %4		
	%6 = load i32, i32* %5, align 4		
	%7 = lshr i32 %s1.0, 16		
	%8 = and i32 %7, 255		
	%9 = zext i32 %8 to i64		
	%10 = getelementptr [256 x i32], [256 x i32]* @Te1, i64 0, i64 %9		
	%11 = load i32, i32* %10, align 4		
	%ctg2.sum2728 = or i64 %tmp18, 8		
	%12 = getelementptr i8, i8* %rk26, i64 %ctg2.sum2728		
	%13 = bitcast i8* %12 to i32*		
	%14 = load i32, i32* %13, align 4		
	%15 = xor i32 %11, %6		
	%16 = xor i32 %15, %14		
	%17 = lshr i32 %s1.0, 24		
	%18 = zext i32 %17 to i64		
	%19 = getelementptr [256 x i32], [256 x i32]* @Te0, i64 0, i64 %18		
	%20 = load i32, i32* %19, align 4		
	%21 = and i32 %s0.0, 255		
	%22 = zext i32 %21 to i64		
	%23 = getelementptr [256 x i32], [256 x i32]* @Te3, i64 0, i64 %22		
	%24 = load i32, i32* %23, align 4		
	%ctg2.sum2930 = or i64 %tmp18, 12		
	%25 = getelementptr i8, i8* %rk26, i64 %ctg2.sum2930		
	%26 = bitcast i8* %25 to i32*		
	%27 = load i32, i32* %26, align 4		
	%28 = xor i32 %24, %20		
	%29 = xor i32 %28, %27		
	%30 = lshr i32 %16, 24		
	%31 = zext i32 %30 to i64		
	%32 = getelementptr [256 x i32], [256 x i32]* @Te0, i64 0, i64 %31		
	%33 = load i32, i32* %32, align 4		
	%exitcond = icmp eq i64 %indvar, %tmp.16		
	br i1 %exitcond, label %bb2, label %bb1

bb1:		
	%ctg2.sum31 = add i64 %tmp18, 16		
	%34 = getelementptr i8, i8* %rk26, i64 %ctg2.sum31		
	%35 = bitcast i8* %34 to i32*		
	%36 = lshr i32 %29, 16		
	%37 = and i32 %36, 255		
	%38 = zext i32 %37 to i64		
	%39 = getelementptr [256 x i32], [256 x i32]* @Te1, i64 0, i64 %38		
	%40 = load i32, i32* %39, align 4		
	%41 = load i32, i32* %35, align 4		
	%42 = xor i32 %40, %33		
	%43 = xor i32 %42, %41		
	%44 = lshr i32 %29, 24		
	%45 = zext i32 %44 to i64		
	%46 = getelementptr [256 x i32], [256 x i32]* @Te0, i64 0, i64 %45		
	%47 = load i32, i32* %46, align 4		
	%48 = and i32 %16, 255		
	%49 = zext i32 %48 to i64		
	%50 = getelementptr [256 x i32], [256 x i32]* @Te3, i64 0, i64 %49		
	%51 = load i32, i32* %50, align 4		
	%ctg2.sum32 = add i64 %tmp18, 20		
	%52 = getelementptr i8, i8* %rk26, i64 %ctg2.sum32		
	%53 = bitcast i8* %52 to i32*		
	%54 = load i32, i32* %53, align 4		
	%55 = xor i32 %51, %47		
	%56 = xor i32 %55, %54		
	%indvar.next = add i64 %indvar, 1		
	br label %bb

bb2:		
	%tmp10 = shl i64 %tmp.16, 4		
	%ctg2.sum = add i64 %tmp10, 16		
	%tmp1213 = getelementptr i8, i8* %rk26, i64 %ctg2.sum		
	%57 = bitcast i8* %tmp1213 to i32*		
	%58 = and i32 %33, -16777216		
	%59 = lshr i32 %29, 16		
	%60 = and i32 %59, 255		
	%61 = zext i32 %60 to i64		
	%62 = getelementptr [256 x i32], [256 x i32]* @Te1, i64 0, i64 %61		
	%63 = load i32, i32* %62, align 4		
	%64 = and i32 %63, 16711680		
	%65 = or i32 %64, %58		
	%66 = load i32, i32* %57, align 4		
	%67 = xor i32 %65, %66		
	%68 = lshr i32 %29, 8		
	%69 = zext i32 %68 to i64		
	%70 = getelementptr [256 x i32], [256 x i32]* @Te0, i64 0, i64 %69		
	%71 = load i32, i32* %70, align 4		
	%72 = and i32 %71, -16777216		
	%73 = and i32 %16, 255		
	%74 = zext i32 %73 to i64		
	%75 = getelementptr [256 x i32], [256 x i32]* @Te1, i64 0, i64 %74		
	%76 = load i32, i32* %75, align 4		
	%77 = and i32 %76, 16711680		
	%78 = or i32 %77, %72		
	%ctg2.sum25 = add i64 %tmp10, 20		
	%79 = getelementptr i8, i8* %rk26, i64 %ctg2.sum25		
	%80 = bitcast i8* %79 to i32*		
	%81 = load i32, i32* %80, align 4		
	%82 = xor i32 %78, %81		
	%83 = lshr i32 %67, 24		
	%84 = trunc i32 %83 to i8		
	store i8 %84, i8* %out, align 1
	%85 = lshr i32 %67, 16		
	%86 = trunc i32 %85 to i8		
	%87 = getelementptr i8, i8* %out, i64 1		
	store i8 %86, i8* %87, align 1
	%88 = getelementptr i8, i8* %out, i64 4		
	%89 = lshr i32 %82, 24		
	%90 = trunc i32 %89 to i8		
	store i8 %90, i8* %88, align 1
	%91 = lshr i32 %82, 16		
	%92 = trunc i32 %91 to i8		
	%93 = getelementptr i8, i8* %out, i64 5		
	store i8 %92, i8* %93, align 1
	ret void
}
