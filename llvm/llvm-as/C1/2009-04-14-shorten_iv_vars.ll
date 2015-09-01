

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n32:64"
target triple = "x86_64-apple-darwin9.6"
@a = external global i32*		
@b = external global i32*		
@c = external global i32*		
@d = external global i32*		
@e = external global i32*		
@f = external global i32*		

define void @foo() nounwind {
bb1.thread:
	br label %bb1

bb1:		
	%i.0.reg2mem.0 = phi i32 [ 0, %bb1.thread ], [ %84, %bb1 ]		
	%0 = load i32*, i32** @a, align 8		
	%1 = load i32*, i32** @b, align 8		
	%2 = sext i32 %i.0.reg2mem.0 to i64		
	%3 = getelementptr i32, i32* %1, i64 %2		
	%4 = load i32, i32* %3, align 1		
	%5 = load i32*, i32** @c, align 8		
	%6 = sext i32 %i.0.reg2mem.0 to i64		
	%7 = getelementptr i32, i32* %5, i64 %6		
	%8 = load i32, i32* %7, align 1		
	%9 = add i32 %8, %4		
	%10 = sext i32 %i.0.reg2mem.0 to i64		
	%11 = getelementptr i32, i32* %0, i64 %10		
	store i32 %9, i32* %11, align 1
	%12 = load i32*, i32** @a, align 8		
	%13 = add i32 %i.0.reg2mem.0, 1		
	%14 = load i32*, i32** @b, align 8		
	%15 = add i32 %i.0.reg2mem.0, 1		
	%16 = sext i32 %15 to i64		
	%17 = getelementptr i32, i32* %14, i64 %16		
	%18 = load i32, i32* %17, align 1		
	%19 = load i32*, i32** @c, align 8		
	%20 = add i32 %i.0.reg2mem.0, 1		
	%21 = sext i32 %20 to i64		
	%22 = getelementptr i32, i32* %19, i64 %21		
	%23 = load i32, i32* %22, align 1		
	%24 = add i32 %23, %18		
	%25 = sext i32 %13 to i64		
	%26 = getelementptr i32, i32* %12, i64 %25		
	store i32 %24, i32* %26, align 1
	%27 = load i32*, i32** @a, align 8		
	%28 = add i32 %i.0.reg2mem.0, 2		
	%29 = load i32*, i32** @b, align 8		
	%30 = add i32 %i.0.reg2mem.0, 2		
	%31 = sext i32 %30 to i64		
	%32 = getelementptr i32, i32* %29, i64 %31		
	%33 = load i32, i32* %32, align 1		
	%34 = load i32*, i32** @c, align 8		
	%35 = add i32 %i.0.reg2mem.0, 2		
	%36 = sext i32 %35 to i64		
	%37 = getelementptr i32, i32* %34, i64 %36		
	%38 = load i32, i32* %37, align 1		
	%39 = add i32 %38, %33		
	%40 = sext i32 %28 to i64		
	%41 = getelementptr i32, i32* %27, i64 %40		
	store i32 %39, i32* %41, align 1
	%42 = load i32*, i32** @d, align 8		
	%43 = load i32*, i32** @e, align 8		
	%44 = sext i32 %i.0.reg2mem.0 to i64		
	%45 = getelementptr i32, i32* %43, i64 %44		
	%46 = load i32, i32* %45, align 1		
	%47 = load i32*, i32** @f, align 8		
	%48 = sext i32 %i.0.reg2mem.0 to i64		
	%49 = getelementptr i32, i32* %47, i64 %48		
	%50 = load i32, i32* %49, align 1		
	%51 = add i32 %50, %46		
	%52 = sext i32 %i.0.reg2mem.0 to i64		
	%53 = getelementptr i32, i32* %42, i64 %52		
	store i32 %51, i32* %53, align 1
	%54 = load i32*, i32** @d, align 8		
	%55 = add i32 %i.0.reg2mem.0, 1		
	%56 = load i32*, i32** @e, align 8		
	%57 = add i32 %i.0.reg2mem.0, 1		
	%58 = sext i32 %57 to i64		
	%59 = getelementptr i32, i32* %56, i64 %58		
	%60 = load i32, i32* %59, align 1		
	%61 = load i32*, i32** @f, align 8		
	%62 = add i32 %i.0.reg2mem.0, 1		
	%63 = sext i32 %62 to i64		
	%64 = getelementptr i32, i32* %61, i64 %63		
	%65 = load i32, i32* %64, align 1		
	%66 = add i32 %65, %60		
	%67 = sext i32 %55 to i64		
	%68 = getelementptr i32, i32* %54, i64 %67		
	store i32 %66, i32* %68, align 1
	%69 = load i32*, i32** @d, align 8		
	%70 = add i32 %i.0.reg2mem.0, 2		
	%71 = load i32*, i32** @e, align 8		
	%72 = add i32 %i.0.reg2mem.0, 2		
	%73 = sext i32 %72 to i64		
	%74 = getelementptr i32, i32* %71, i64 %73		
	%75 = load i32, i32* %74, align 1		
	%76 = load i32*, i32** @f, align 8		
	%77 = add i32 %i.0.reg2mem.0, 2		
	%78 = sext i32 %77 to i64		
	%79 = getelementptr i32, i32* %76, i64 %78		
	%80 = load i32, i32* %79, align 1		
	%81 = add i32 %80, %75		
	%82 = sext i32 %70 to i64		
	%83 = getelementptr i32, i32* %69, i64 %82		
	store i32 %81, i32* %83, align 1
	%84 = add i32 %i.0.reg2mem.0, 1		
	%85 = icmp sgt i32 %84, 23646		
	br i1 %85, label %return, label %bb1

return:		
	ret void
}
