








target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64"

@table = common global [32 x [256 x i32]] zeroinitializer, align 32		

define i32 @main() nounwind {
entry:
	br i1 false, label %bb5, label %bb.nph3

bb.nph3:		
	br label %bb

bb:		
	%i.02 = phi i32 [ %tmp10, %bb4 ], [ 0, %bb.nph3 ]		
	br i1 false, label %bb3, label %bb.nph

bb.nph:		
	br label %bb1

bb1:		
	%j.01 = phi i32 [ %tmp8, %bb2 ], [ 0, %bb.nph ]		
	%tmp2 = trunc i32 %j.01 to i8		
	%tmp3 = sext i8 %tmp2 to i32		
	%tmp4 = mul i32 %tmp3, %i.02		
	%tmp5 = sext i32 %i.02 to i64		
	%tmp6 = sext i32 %j.01 to i64		
	%tmp7 = getelementptr [32 x [256 x i32]], [32 x [256 x i32]]* @table, i64 0, i64 %tmp5, i64 %tmp6		
	store i32 %tmp4, i32* %tmp7, align 4
	%tmp8 = add i32 %j.01, 1		
	br label %bb2

bb2:		
	%phitmp1 = icmp sgt i32 %tmp8, 255		
	br i1 %phitmp1, label %bb2.bb3_crit_edge, label %bb1

bb2.bb3_crit_edge:		
	br label %bb3

bb3:		
	%tmp10 = add i32 %i.02, 1		
	br label %bb4

bb4:		
	%phitmp = icmp sgt i32 %tmp10, 31		
	br i1 %phitmp, label %bb4.bb5_crit_edge, label %bb

bb4.bb5_crit_edge:		
	br label %bb5

bb5:		
	%tmp12 = load i32, i32* getelementptr ([32 x [256 x i32]], [32 x [256 x i32]]* @table, i64 0, i64 9, i64 132), align 16		
	%tmp13 = icmp eq i32 %tmp12, -1116		
	br i1 %tmp13, label %bb7, label %bb6

bb6:		
	call void @abort() noreturn nounwind
	unreachable

bb7:		
	br label %return

return:		
	ret i32 0
}

declare void @abort() noreturn nounwind
