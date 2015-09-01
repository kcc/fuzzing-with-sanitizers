


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
@g_14 = internal global i32 1		
@g_39 = internal global i16 -5		
@g_43 = internal global i32 -6		
@g_33 = internal global i32 -1269044541		
@g_137 = internal global i32 8		
@g_82 = internal global i32 -5		
@g_91 = internal global i32 1		
@g_197 = internal global i32 1		
@g_207 = internal global i32 1		
@g_222 = internal global i16 4165		
@g_247 = internal global i8 -21		
@g_260 = internal global i32 1		
@g_221 = internal global i16 -17503		
@g_267 = internal global i16 1		
@llvm.used = appending global [1 x i8*] [ i8* bitcast (i32 (i32, i32, i16, i32, i8, i32)* @func_44 to i8*) ], section "llvm.metadata"		

define i32 @func_44(i32 %p_45, i32 %p_46, i16 zeroext  %p_48, i32 %p_49, i8 zeroext  %p_50, i32 %p_52) nounwind  {
entry:
	tail call i32 @func_116( i8 zeroext  2 ) nounwind 		
	tail call i32 @func_63( i16 signext  2 ) nounwind 		
	load i16, i16* @g_39, align 2		
	tail call i32 @func_63( i16 signext  %2 ) nounwind 		
	trunc i32 %3 to i16		
	and i16 %4, 1		
	trunc i32 %p_52 to i8		
	trunc i32 %1 to i16		
	tail call i32 @func_74( i16 zeroext  %5, i8 zeroext  %6, i16 zeroext  %7, i16 zeroext  0 ) nounwind 		
	tail call i32 @func_124( i32 544824386 ) nounwind 		
	zext i8 %p_50 to i32		
	load i32, i32* @g_43, align 4		
	icmp sle i32 %10, %11		
	zext i1 %12 to i32		
	load i8, i8* @g_247, align 1		
	trunc i32 %p_45 to i16		
	zext i8 %14 to i16		
	tail call i32 @func_74( i16 zeroext  %15, i8 zeroext  0, i16 zeroext  %16, i16 zeroext  23618 ) nounwind 		
	icmp slt i32 %17, 0		
	br i1 %18, label %bb162, label %bb152

bb152:		
	lshr i32 2147483647, %13		
	icmp slt i32 %19, %17		
	select i1 %20, i32 0, i32 %13		
	%.348 = shl i32 %17, %21		
	br label %bb162

bb162:		
	%.0346 = phi i32 [ %.348, %bb152 ], [ %17, %entry ]		
	tail call i32 @func_124( i32 1 ) nounwind 		
	mul i32 %22, %.0346		
	icmp slt i32 %p_45, 0		
	icmp ugt i32 %p_45, 31		
	%or.cond = or i1 %24, %25		
	br i1 %or.cond, label %bb172, label %bb168

bb168:		
	lshr i32 2147483647, %p_45		
	shl i32 1392859848, %p_45		
	icmp slt i32 %26, 1392859848		
	%.op355 = add i32 %27, 38978		
	%phitmp = select i1 %28, i32 1392898826, i32 %.op355		
	br label %bb172

bb172:		
	%.0343 = phi i32 [ %phitmp, %bb168 ], [ 1392898826, %bb162 ]		
	tail call i32 @func_84( i32 1, i16 zeroext  0, i16 zeroext  8 ) nounwind 		
	icmp eq i32 %.0343, 0		
	%.0341 = select i1 %30, i32 1, i32 %.0343		
	urem i32 %23, %.0341		
	load i32, i32* @g_137, align 4		
	icmp slt i32 %32, 0		
	br i1 %33, label %bb202, label %bb198

bb198:		
	%not. = icmp slt i32 %32, 1073741824		
	zext i1 %not. to i32		
	%.351 = shl i32 %32, %34		
	br label %bb202

bb202:		
	%.0335 = phi i32 [ %.351, %bb198 ], [ %32, %bb172 ]		
	icmp ne i32 %31, %.0335		
	zext i1 %35 to i32		
	tail call i32 @func_128( i32 %36 ) nounwind 		
	icmp eq i32 %p_45, 293685862		
	br i1 %38, label %bb205, label %bb311

bb205:		
	icmp sgt i32 %p_46, 214		
	zext i1 %39 to i32		
	tail call i32 @func_128( i32 %40 ) nounwind 		
	icmp sgt i32 %p_46, 65532		
	zext i1 %42 to i16		
	tail call i32 @func_74( i16 zeroext  23618, i8 zeroext  -29, i16 zeroext  %43, i16 zeroext  1 ) nounwind 		
	tail call i32 @func_103( i16 zeroext  -869 ) nounwind 		
	udiv i32 %44, 34162		
	icmp ult i32 %44, 34162		
	%.0331 = select i1 %47, i32 1, i32 %46		
	urem i32 293685862, %.0331		
	tail call i32 @func_112( i32 %p_52, i16 zeroext  1 ) nounwind 		
	icmp eq i32 %p_52, 0		
	br i1 %50, label %bb222, label %bb215

bb215:		
	zext i16 %p_48 to i32		
	icmp eq i16 %p_48, 0		
	%.0329 = select i1 %52, i32 1, i32 %51		
	udiv i32 -1, %.0329		
	icmp eq i32 %53, 0		
	br i1 %54, label %bb222, label %bb223

bb222:		
	br label %bb223

bb223:		
	%iftmp.437.0 = phi i32 [ 0, %bb222 ], [ 1, %bb215 ]		
	load i32, i32* @g_91, align 4		
	tail call i32 @func_103( i16 zeroext  4 ) nounwind 		
	tail call i32 @func_112( i32 0, i16 zeroext  -31374 ) nounwind 		
	load i32, i32* @g_197, align 4		
	tail call i32 @func_124( i32 28156 ) nounwind 		
	load i32, i32* @g_260, align 4		
	load i32, i32* @g_43, align 4		
	xor i32 %61, %60		
	mul i32 %62, %59		
	trunc i32 %63 to i8		
	trunc i32 %58 to i16		
	tail call i32 @func_74( i16 zeroext  0, i8 zeroext  %64, i16 zeroext  %65, i16 zeroext  0 ) nounwind 		
	icmp slt i32 %66, 0		
	icmp slt i32 %55, 0		
	icmp ugt i32 %55, 31		
	or i1 %68, %69		
	%or.cond352 = or i1 %70, %67		
	select i1 %or.cond352, i32 0, i32 %55		
	%.353 = ashr i32 %66, %71		
	load i16, i16* @g_221, align 2		
	zext i16 %72 to i32		
	icmp ugt i32 %.353, 31		
	select i1 %74, i32 0, i32 %.353		
	%.0323 = lshr i32 %73, %75		
	add i32 %.0323, %iftmp.437.0		
	and i32 %48, 255		
	add i32 %77, 2042556439		
	load i32, i32* @g_207, align 4		
	icmp ugt i32 %79, 31		
	select i1 %80, i32 0, i32 %79		
	%.0320 = lshr i32 %77, %81		
	icmp ne i32 %78, %.0320		
	zext i1 %82 to i8		
	tail call i32 @func_25( i8 zeroext  %83 ) nounwind 		
	xor i32 %84, 1		
	load i32, i32* @g_197, align 4		
	add i32 %86, 1		
	add i32 %87, %85		
	icmp ugt i32 %76, %88		
	br i1 %89, label %bb241, label %bb311

bb241:		
	store i16 -9, i16* @g_221, align 2
	udiv i32 %p_52, 1538244727		
	load i32, i32* @g_207, align 4		
	sub i32 %91, %90		
	load i32, i32* @g_14, align 4		
	trunc i32 %93 to i16		
	trunc i32 %p_46 to i16		
	sub i16 %94, %95		
	load i32, i32* @g_197, align 4		
	trunc i32 %97 to i16		
	tail call i32 @func_55( i32 -346178830, i16 zeroext  %98, i16 zeroext  %95 ) nounwind 		
	zext i16 %p_48 to i32		
	load i8, i8* @g_247, align 1		
	zext i8 %101 to i32		
	sub i32 %100, %102		
	tail call i32 @func_55( i32 %103, i16 zeroext  -2972, i16 zeroext  %96 ) nounwind 		
	xor i32 %92, 2968		
	load i32, i32* @g_197, align 4		
	icmp ugt i32 %105, %106		
	zext i1 %107 to i32		
	store i32 %108, i32* @g_33, align 4
	br label %bb248

bb248:		
	%p_49_addr.1.reg2mem.0 = phi i32 [ 0, %bb241 ], [ %134, %bb284 ]		
	%p_48_addr.2.reg2mem.0 = phi i16 [ %p_48, %bb241 ], [ %p_48_addr.1, %bb284 ]		
	%p_46_addr.1.reg2mem.0 = phi i32 [ %p_46, %bb241 ], [ %133, %bb284 ]		
	%p_45_addr.1.reg2mem.0 = phi i32 [ %p_45, %bb241 ], [ %p_45_addr.0, %bb284 ]		
	tail call i32 @func_63( i16 signext  1 ) nounwind 		
	icmp eq i32 %109, 0		
	br i1 %110, label %bb272.thread, label %bb255.thread

bb272.thread:		
	store i32 1, i32* @g_82
	load i16, i16* @g_267, align 2		
	icmp eq i16 %111, 0		
	br i1 %112, label %bb311.loopexit.split, label %bb268

bb255.thread:		
	load i32, i32* @g_260, align 4		
	sub i32 %113, %p_52		
	and i32 %114, -20753		
	icmp ne i32 %115, 0		
	zext i1 %116 to i16		
	store i16 %117, i16* @g_221, align 2
	br label %bb284

bb268:		
	%indvar = phi i32 [ 0, %bb272.thread ], [ %g_82.tmp.0, %bb268 ]		
	%p_46_addr.0.reg2mem.0 = phi i32 [ %p_46_addr.1.reg2mem.0, %bb272.thread ], [ %119, %bb268 ]		
	%g_82.tmp.0 = add i32 %indvar, 1		
	trunc i32 %p_46_addr.0.reg2mem.0 to i16		
	and i32 %g_82.tmp.0, 28156		
	add i32 %indvar, 2		
	icmp sgt i32 %120, -1		
	br i1 %121, label %bb268, label %bb274.split

bb274.split:		
	store i32 %120, i32* @g_82
	br i1 %50, label %bb279, label %bb276

bb276:		
	store i16 0, i16* @g_222, align 2
	br label %bb284

bb279:		
	icmp eq i32 %120, 0		
	%.0317 = select i1 %122, i32 1, i32 %120		
	udiv i32 -8, %.0317		
	trunc i32 %123 to i16		
	br label %bb284

bb284:		
	%p_49_addr.0 = phi i32 [ %p_49_addr.1.reg2mem.0, %bb279 ], [ %p_49_addr.1.reg2mem.0, %bb276 ], [ 0, %bb255.thread ]		
	%p_48_addr.1 = phi i16 [ %124, %bb279 ], [ %118, %bb276 ], [ %p_48_addr.2.reg2mem.0, %bb255.thread ]		
	%p_45_addr.0 = phi i32 [ %p_45_addr.1.reg2mem.0, %bb279 ], [ %p_45_addr.1.reg2mem.0, %bb276 ], [ 8, %bb255.thread ]		
	load i32, i32* @g_43, align 4		
	trunc i32 %125 to i8		
	tail call i32 @func_116( i8 zeroext  %126 ) nounwind 		
	lshr i32 65255, %p_45_addr.0		
	icmp ugt i32 %p_45_addr.0, 31		
	%.op = lshr i32 %128, 31		
	%.op.op = xor i32 %.op, 1		
	%.354..lobit.not = select i1 %129, i32 1, i32 %.op.op		
	load i16, i16* @g_39, align 2		
	zext i16 %130 to i32		
	icmp slt i32 %.354..lobit.not, %131		
	zext i1 %132 to i32		
	add i32 %p_49_addr.0, 1		
	icmp sgt i32 %134, -1		
	br i1 %135, label %bb248, label %bb307

bb307:		
	tail call i32 @func_103( i16 zeroext  0 ) nounwind 		
	ret i32 %40

bb311.loopexit.split:		
	store i32 1, i32* @g_82
	ret i32 1

bb311:		
	%.0 = phi i32 [ 1, %bb202 ], [ 0, %bb223 ]		
	ret i32 %.0
}

declare i32 @func_25(i8 zeroext ) nounwind 

declare i32 @func_55(i32, i16 zeroext , i16 zeroext ) nounwind 

declare i32 @func_63(i16 signext ) nounwind 

declare i32 @func_74(i16 zeroext , i8 zeroext , i16 zeroext , i16 zeroext ) nounwind 

declare i32 @func_84(i32, i16 zeroext , i16 zeroext ) nounwind 

declare i32 @func_103(i16 zeroext ) nounwind 

declare i32 @func_124(i32) nounwind 

declare i32 @func_128(i32) nounwind 

declare i32 @func_116(i8 zeroext ) nounwind 

declare i32 @func_112(i32, i16 zeroext ) nounwind 
