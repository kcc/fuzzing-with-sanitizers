

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"



	%struct.complex = type { float, float }
	%struct.element = type { i32, i32 }
	%struct.node = type { %struct.node*, %struct.node*, i32 }
@seed = external global i64		
@_2E_str = external constant [18 x i8], align 1		
@_2E_str1 = external constant [4 x i8], align 1		
@value = external global float		
@fixed = external global float		
@floated = external global float		
@permarray = external global [11 x i32], align 32		
@pctr = external global i32		
@tree = external global %struct.node*		
@stack = external global [4 x i32], align 16		
@cellspace = external global [19 x %struct.element], align 32		
@freelist = external global i32		
@movesdone = external global i32		
@ima = external global [41 x [41 x i32]], align 32		
@imb = external global [41 x [41 x i32]], align 32		
@imr = external global [41 x [41 x i32]], align 32		
@rma = external global [41 x [41 x float]], align 32		
@rmb = external global [41 x [41 x float]], align 32		
@rmr = external global [41 x [41 x float]], align 32		
@piececount = external global [4 x i32], align 16		
@class = external global [13 x i32], align 32		
@piecemax = external global [13 x i32], align 32		
@puzzl = external global [512 x i32], align 32		
@p = external global [13 x [512 x i32]], align 32		
@n = external global i32		
@kount = external global i32		
@sortlist = external global [5001 x i32], align 32		
@biggest = external global i32		
@littlest = external global i32		
@top = external global i32		
@z = external global [257 x %struct.complex], align 32		
@w = external global [257 x %struct.complex], align 32		
@e = external global [130 x %struct.complex], align 32		
@zr = external global float		
@zi = external global float		

declare void @Initrand() nounwind

declare i32 @Rand() nounwind

declare void @Try(i32, i32*, i32*, i32*, i32*, i32*) nounwind

declare i32 @puts(i8* nocapture) nounwind

declare void @Queens(i32) nounwind

declare i32 @printf(i8* nocapture, ...) nounwind

declare i32 @main() nounwind

declare void @Doit() nounwind

declare void @Doit_bb7([15 x i32]*, [17 x i32]*, [9 x i32]*) nounwind

define void @Doit_bb7_2E_i([9 x i32]* %x1, [15 x i32]* %c, [17 x i32]* %b, [9 x i32]* %a, i32* %q, i32* %x1.sub, i32* %b9, i32* %a10, i32* %c11) nounwind {
newFuncRoot:
	br label %bb7.i

Try.exit.exitStub:		
	ret void

bb.i:		
	%tmp = add i32 %j.0.i, 1		
	store i32 0, i32* %q, align 4
	%tmp1 = sext i32 %tmp to i64		
	%tmp2 = getelementptr [9 x i32], [9 x i32]* %a, i64 0, i64 %tmp1		
	%tmp3 = load i32, i32* %tmp2, align 4		
	%tmp4 = icmp eq i32 %tmp3, 0		
	br i1 %tmp4, label %bb.i.bb7.i.backedge_crit_edge, label %bb1.i

bb1.i:		
	%tmp5 = add i32 %j.0.i, 2		
	%tmp6 = sext i32 %tmp5 to i64		
	%tmp7 = getelementptr [17 x i32], [17 x i32]* %b, i64 0, i64 %tmp6		
	%tmp8 = load i32, i32* %tmp7, align 4		
	%tmp9 = icmp eq i32 %tmp8, 0		
	br i1 %tmp9, label %bb1.i.bb7.i.backedge_crit_edge, label %bb2.i

bb2.i:		
	%tmp10 = sub i32 7, %j.0.i		
	%tmp11 = sext i32 %tmp10 to i64		
	%tmp12 = getelementptr [15 x i32], [15 x i32]* %c, i64 0, i64 %tmp11		
	%tmp13 = load i32, i32* %tmp12, align 4		
	%tmp14 = icmp eq i32 %tmp13, 0		
	br i1 %tmp14, label %bb2.i.bb7.i.backedge_crit_edge, label %bb3.i

bb3.i:		
	%tmp15 = getelementptr [9 x i32], [9 x i32]* %x1, i64 0, i64 1		
	store i32 %tmp, i32* %tmp15, align 4
	%tmp16 = sext i32 %tmp to i64		
	%tmp17 = getelementptr [9 x i32], [9 x i32]* %a, i64 0, i64 %tmp16		
	store i32 0, i32* %tmp17, align 4
	%tmp18 = add i32 %j.0.i, 2		
	%tmp19 = sext i32 %tmp18 to i64		
	%tmp20 = getelementptr [17 x i32], [17 x i32]* %b, i64 0, i64 %tmp19		
	store i32 0, i32* %tmp20, align 4
	%tmp21 = sub i32 7, %j.0.i		
	%tmp22 = sext i32 %tmp21 to i64		
	%tmp23 = getelementptr [15 x i32], [15 x i32]* %c, i64 0, i64 %tmp22		
	store i32 0, i32* %tmp23, align 4
	call void @Try(i32 2, i32* %q, i32* %b9, i32* %a10, i32* %c11, i32* %x1.sub) nounwind
	%tmp24 = load i32, i32* %q, align 4		
	%tmp25 = icmp eq i32 %tmp24, 0		
	br i1 %tmp25, label %bb5.i, label %bb3.i.bb7.i.backedge_crit_edge

bb5.i:		
	%tmp26 = sext i32 %tmp to i64		
	%tmp27 = getelementptr [9 x i32], [9 x i32]* %a, i64 0, i64 %tmp26		
	store i32 1, i32* %tmp27, align 4
	%tmp28 = add i32 %j.0.i, 2		
	%tmp29 = sext i32 %tmp28 to i64		
	%tmp30 = getelementptr [17 x i32], [17 x i32]* %b, i64 0, i64 %tmp29		
	store i32 1, i32* %tmp30, align 4
	%tmp31 = sub i32 7, %j.0.i		
	%tmp32 = sext i32 %tmp31 to i64		
	%tmp33 = getelementptr [15 x i32], [15 x i32]* %c, i64 0, i64 %tmp32		
	store i32 1, i32* %tmp33, align 4
	br label %bb7.i.backedge

bb7.i.backedge:		
	br label %bb7.i

bb7.i:		
	%j.0.i = phi i32 [ 0, %newFuncRoot ], [ %tmp, %bb7.i.backedge ]		
	%tmp34 = load i32, i32* %q, align 4		
	%tmp35 = icmp eq i32 %tmp34, 0		
	%tmp36 = icmp ne i32 %j.0.i, 8		
	%tmp37 = and i1 %tmp35, %tmp36		
	br i1 %tmp37, label %bb.i, label %Try.exit.exitStub

bb.i.bb7.i.backedge_crit_edge:		
	br label %bb7.i.backedge

bb1.i.bb7.i.backedge_crit_edge:		
	br label %bb7.i.backedge

bb2.i.bb7.i.backedge_crit_edge:		
	br label %bb7.i.backedge

bb3.i.bb7.i.backedge_crit_edge:		
	br label %bb7.i.backedge
}
