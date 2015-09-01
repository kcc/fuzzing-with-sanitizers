









target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9"

define void @foo(i8* %r, i32 %s, i32 %w, i32 %x, i8* %j, i32 %d) nounwind {
entry:
	%0 = mul i32 %x, %w		
	%1 = mul i32 %x, %w		
	%2 = sdiv i32 %1, 4		
	%.sum2 = add i32 %2, %0		
	%cond = icmp eq i32 %d, 1		
	br i1 %cond, label %bb29, label %bb10.preheader

bb10.preheader:		
	%3 = icmp sgt i32 %x, 0		
	br i1 %3, label %bb.nph9, label %bb18.loopexit

bb.nph7:		
	%4 = mul i32 %y.08, %w		
	%5 = mul i32 %y.08, %s		
	%6 = add i32 %5, 1		
	br label %bb6

bb6:		
	%x.06 = phi i32 [ %13, %bb7 ], [ 0, %bb.nph7 ]		
	%7 = add i32 %x.06, %4		
	%8 = shl i32 %x.06, 1		
	%9 = add i32 %6, %8		
	%10 = getelementptr i8, i8* %r, i32 %9		
	%11 = load i8, i8* %10, align 1		
	%12 = getelementptr i8, i8* %j, i32 %7		
	store i8 %11, i8* %12, align 1
	%13 = add i32 %x.06, 1		
	br label %bb7

bb7:		
	%14 = icmp slt i32 %13, %w		
	br i1 %14, label %bb6, label %bb7.bb9_crit_edge

bb7.bb9_crit_edge:		
	br label %bb9

bb9:		
	%15 = add i32 %y.08, 1		
	br label %bb10

bb10:		
	%16 = icmp slt i32 %15, %x		
	br i1 %16, label %bb7.preheader, label %bb10.bb18.loopexit_crit_edge

bb10.bb18.loopexit_crit_edge:		
	br label %bb10.bb18.loopexit_crit_edge.split

bb10.bb18.loopexit_crit_edge.split:		
	br label %bb18.loopexit

bb.nph9:		
	%17 = icmp sgt i32 %w, 0		
	br i1 %17, label %bb.nph9.split, label %bb10.bb18.loopexit_crit_edge.split

bb.nph9.split:		
	br label %bb7.preheader

bb7.preheader:		
	%y.08 = phi i32 [ %15, %bb10 ], [ 0, %bb.nph9.split ]		
	br i1 true, label %bb.nph7, label %bb9

bb.nph5:		
	%18 = sdiv i32 %w, 2		
	%19 = icmp slt i32 %w, 2		
	%20 = sdiv i32 %x, 2		
	br i1 %19, label %bb18.bb20_crit_edge.split, label %bb.nph5.split

bb.nph5.split:		
	br label %bb13

bb13:		
	%y.14 = phi i32 [ %42, %bb18 ], [ 0, %bb.nph5.split ]		
	%21 = mul i32 %18, %y.14		
	%22 = shl i32 %y.14, 1		
	%23 = srem i32 %y.14, 2		
	%24 = add i32 %23, %22		
	%25 = mul i32 %24, %s		
	br i1 true, label %bb.nph3, label %bb17

bb.nph3:		
	%26 = add i32 %21, %0		
	%27 = add i32 %21, %.sum2		
	%28 = sdiv i32 %w, 2		
	br label %bb14

bb14:		
	%x.12 = phi i32 [ %40, %bb15 ], [ 0, %bb.nph3 ]		
	%29 = shl i32 %x.12, 2		
	%30 = add i32 %29, %25		
	%31 = getelementptr i8, i8* %r, i32 %30		
	%32 = load i8, i8* %31, align 1		
	%.sum = add i32 %26, %x.12		
	%33 = getelementptr i8, i8* %j, i32 %.sum		
	store i8 %32, i8* %33, align 1
	%34 = shl i32 %x.12, 2		
	%35 = or i32 %34, 2		
	%36 = add i32 %35, %25		
	%37 = getelementptr i8, i8* %r, i32 %36		
	%38 = load i8, i8* %37, align 1		
	%.sum6 = add i32 %27, %x.12		
	%39 = getelementptr i8, i8* %j, i32 %.sum6		
	store i8 %38, i8* %39, align 1
	%40 = add i32 %x.12, 1		
	br label %bb15

bb15:		
	%41 = icmp sgt i32 %28, %40		
	br i1 %41, label %bb14, label %bb15.bb17_crit_edge

bb15.bb17_crit_edge:		
	br label %bb17

bb17:		
	%42 = add i32 %y.14, 1		
	br label %bb18

bb18.loopexit:		
	%43 = icmp slt i32 %x, 2		
	br i1 %43, label %bb20, label %bb.nph5

bb18:		
	%44 = icmp sgt i32 %20, %42		
	br i1 %44, label %bb13, label %bb18.bb20_crit_edge

bb18.bb20_crit_edge:		
	br label %bb18.bb20_crit_edge.split

bb18.bb20_crit_edge.split:		
	br label %bb20

bb20:		
	switch i32 %d, label %return [
		i32 3, label %bb22
		i32 1, label %bb29
	]

bb22:		
	%45 = mul i32 %x, %w		
	%46 = sdiv i32 %45, 4		
	%.sum3 = add i32 %46, %.sum2		
	%47 = add i32 %x, 15		
	%48 = and i32 %47, -16		
	%49 = add i32 %w, 15		
	%50 = and i32 %49, -16		
	%51 = mul i32 %48, %s		
	%52 = icmp sgt i32 %x, 0		
	br i1 %52, label %bb.nph, label %bb26

bb.nph:		
	br label %bb23

bb23:		
	%y.21 = phi i32 [ %57, %bb24 ], [ 0, %bb.nph ]		
	%53 = mul i32 %y.21, %50		
	%.sum1 = add i32 %53, %51		
	%54 = getelementptr i8, i8* %r, i32 %.sum1		
	%55 = mul i32 %y.21, %w		
	%.sum5 = add i32 %55, %.sum3		
	%56 = getelementptr i8, i8* %j, i32 %.sum5		
	tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %54, i32 %w, i32 1, i1 false)
	%57 = add i32 %y.21, 1		
	br label %bb24

bb24:		
	%58 = icmp slt i32 %57, %x		
	br i1 %58, label %bb23, label %bb24.bb26_crit_edge

bb24.bb26_crit_edge:		
	br label %bb26

bb26:		
	%59 = mul i32 %x, %w		
	%.sum4 = add i32 %.sum3, %59		
	%60 = getelementptr i8, i8* %j, i32 %.sum4		
	%61 = mul i32 %x, %w		
	%62 = sdiv i32 %61, 2		
	tail call void @llvm.memset.p0i8.i32(i8* %60, i8 -128, i32 %62, i32 1, i1 false)
	ret void

bb29:		
	%63 = add i32 %w, 15		
	%64 = and i32 %63, -16		
	%65 = icmp sgt i32 %x, 0		
	br i1 %65, label %bb.nph11, label %bb33

bb.nph11:		
	br label %bb30

bb30:		
	%y.310 = phi i32 [ %70, %bb31 ], [ 0, %bb.nph11 ]		
	%66 = mul i32 %y.310, %64		
	%67 = getelementptr i8, i8* %r, i32 %66		
	%68 = mul i32 %y.310, %w		
	%69 = getelementptr i8, i8* %j, i32 %68		
	tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %69, i8* %67, i32 %w, i32 1, i1 false)
	%70 = add i32 %y.310, 1		
	br label %bb31

bb31:		
	%71 = icmp slt i32 %70, %x		
	br i1 %71, label %bb30, label %bb31.bb33_crit_edge

bb31.bb33_crit_edge:		
	br label %bb33

bb33:		
	%72 = mul i32 %x, %w		
	%73 = getelementptr i8, i8* %j, i32 %72		
	%74 = mul i32 %x, %w		
	%75 = sdiv i32 %74, 2		
	tail call void @llvm.memset.p0i8.i32(i8* %73, i8 -128, i32 %75, i32 1, i1 false)
	ret void

return:		
	ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind
