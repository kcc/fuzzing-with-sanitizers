














target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n32:64"
target triple = "x86_64-apple-darwin9.6"
@a = external global i32*		
@b = external global i32*		
@c = external global i32*		
@d = external global i32*		
@e = external global i32*		
@f = external global i32*		
@K = external global [256 x i32]		

define void @foo() nounwind {
bb1.thread:
	br label %bb1

bb1:		
	%i.0.reg2mem.0 = phi i32 [ 0, %bb1.thread ], [ %116, %bb1 ]		
	%0 = load i32*, i32** @a, align 8		
	%1 = and i32 %i.0.reg2mem.0, 15		
	%2 = load i32*, i32** @b, align 8		
	%3 = and i32 %i.0.reg2mem.0, 15		
	%4 = zext i32 %3 to i64		
	%5 = getelementptr i32, i32* %2, i64 %4		
	%6 = load i32, i32* %5, align 1		
	%7 = load i32*, i32** @c, align 8		
	%8 = and i32 %i.0.reg2mem.0, 15		
	%9 = zext i32 %8 to i64		
	%10 = getelementptr i32, i32* %7, i64 %9		
	%11 = load i32, i32* %10, align 1		
	%12 = add i32 %11, %6		
	%13 = zext i32 %1 to i64		
	%14 = getelementptr i32, i32* %0, i64 %13		
	store i32 %12, i32* %14, align 1
	%15 = load i32*, i32** @a, align 8		
	%16 = add i32 %i.0.reg2mem.0, 1		
	%17 = and i32 %16, 15		
	%18 = load i32*, i32** @b, align 8		
	%19 = add i32 %i.0.reg2mem.0, 1		
	%20 = and i32 %19, 15		
	%21 = zext i32 %20 to i64		
	%22 = getelementptr i32, i32* %18, i64 %21		
	%23 = load i32, i32* %22, align 1		
	%24 = load i32*, i32** @c, align 8		
	%25 = add i32 %i.0.reg2mem.0, 1		
	%26 = and i32 %25, 15		
	%27 = zext i32 %26 to i64		
	%28 = getelementptr i32, i32* %24, i64 %27		
	%29 = load i32, i32* %28, align 1		
	%30 = add i32 %29, %23		
	%31 = zext i32 %17 to i64		
	%32 = getelementptr i32, i32* %15, i64 %31		
	store i32 %30, i32* %32, align 1
	%33 = load i32*, i32** @a, align 8		
	%34 = add i32 %i.0.reg2mem.0, 2		
	%35 = and i32 %34, 15		
	%36 = load i32*, i32** @b, align 8		
	%37 = add i32 %i.0.reg2mem.0, 2		
	%38 = and i32 %37, 15		
	%39 = zext i32 %38 to i64		
	%40 = getelementptr i32, i32* %36, i64 %39		
	%41 = load i32, i32* %40, align 1		
	%42 = load i32*, i32** @c, align 8		
	%43 = add i32 %i.0.reg2mem.0, 2		
	%44 = and i32 %43, 15		
	%45 = zext i32 %44 to i64		
	%46 = getelementptr i32, i32* %42, i64 %45		
	%47 = load i32, i32* %46, align 1		
	%48 = add i32 %47, %41		
	%49 = zext i32 %35 to i64		
	%50 = getelementptr i32, i32* %33, i64 %49		
	store i32 %48, i32* %50, align 1
	%51 = load i32*, i32** @d, align 8		
	%52 = and i32 %i.0.reg2mem.0, 15		
	%53 = load i32*, i32** @e, align 8		
	%54 = and i32 %i.0.reg2mem.0, 15		
	%55 = zext i32 %54 to i64		
	%56 = getelementptr i32, i32* %53, i64 %55		
	%57 = load i32, i32* %56, align 1		
	%58 = load i32*, i32** @f, align 8		
	%59 = and i32 %i.0.reg2mem.0, 15		
	%60 = zext i32 %59 to i64		
	%61 = getelementptr i32, i32* %58, i64 %60		
	%62 = load i32, i32* %61, align 1		
	%63 = sext i32 %i.0.reg2mem.0 to i64		
	%64 = getelementptr [256 x i32], [256 x i32]* @K, i64 0, i64 %63		
	%65 = load i32, i32* %64, align 4		
	%66 = add i32 %62, %57		
	%67 = add i32 %66, %65		
	%68 = zext i32 %52 to i64		
	%69 = getelementptr i32, i32* %51, i64 %68		
	store i32 %67, i32* %69, align 1
	%70 = load i32*, i32** @d, align 8		
	%71 = add i32 %i.0.reg2mem.0, 1		
	%72 = and i32 %71, 15		
	%73 = load i32*, i32** @e, align 8		
	%74 = add i32 %i.0.reg2mem.0, 1		
	%75 = and i32 %74, 15		
	%76 = zext i32 %75 to i64		
	%77 = getelementptr i32, i32* %73, i64 %76		
	%78 = load i32, i32* %77, align 1		
	%79 = load i32*, i32** @f, align 8		
	%80 = add i32 %i.0.reg2mem.0, 1		
	%81 = and i32 %80, 15		
	%82 = zext i32 %81 to i64		
	%83 = getelementptr i32, i32* %79, i64 %82		
	%84 = load i32, i32* %83, align 1		
	%85 = add i32 %i.0.reg2mem.0, 1		
	%86 = sext i32 %85 to i64		
	%87 = getelementptr [256 x i32], [256 x i32]* @K, i64 0, i64 %86		
	%88 = load i32, i32* %87, align 4		
	%89 = add i32 %84, %78		
	%90 = add i32 %89, %88		
	%91 = zext i32 %72 to i64		
	%92 = getelementptr i32, i32* %70, i64 %91		
	store i32 %90, i32* %92, align 1
	%93 = load i32*, i32** @d, align 8		
	%94 = add i32 %i.0.reg2mem.0, 2		
	%95 = and i32 %94, 15		
	%96 = load i32*, i32** @e, align 8		
	%97 = add i32 %i.0.reg2mem.0, 2		
	%98 = and i32 %97, 15		
	%99 = zext i32 %98 to i64		
	%100 = getelementptr i32, i32* %96, i64 %99		
	%101 = load i32, i32* %100, align 1		
	%102 = load i32*, i32** @f, align 8		
	%103 = add i32 %i.0.reg2mem.0, 2		
	%104 = and i32 %103, 15		
	%105 = zext i32 %104 to i64		
	%106 = getelementptr i32, i32* %102, i64 %105		
	%107 = load i32, i32* %106, align 1		
	%108 = add i32 %i.0.reg2mem.0, 2		
	%109 = sext i32 %108 to i64		
	%110 = getelementptr [256 x i32], [256 x i32]* @K, i64 0, i64 %109		
	%111 = load i32, i32* %110, align 4		
	%112 = add i32 %107, %101		
	%113 = add i32 %112, %111		
	%114 = zext i32 %95 to i64		
	%115 = getelementptr i32, i32* %93, i64 %114		
	store i32 %113, i32* %115, align 1
	%116 = add i32 %i.0.reg2mem.0, 1		
	%117 = icmp sgt i32 %116, 23646		
	br i1 %117, label %return, label %bb1

return:		
	ret void
}
