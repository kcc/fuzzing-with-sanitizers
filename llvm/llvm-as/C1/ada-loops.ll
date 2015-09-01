














target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-n8:16:32"
target triple = "i686-pc-linux-gnu"

define void @kinds__sbytezero([256 x i32]* nocapture %a) nounwind {
bb.thread:
	%tmp46 = getelementptr [256 x i32], [256 x i32]* %a, i32 0, i32 0		
	store i32 0, i32* %tmp46
	br label %bb

bb:		
	%i.0.reg2mem.0 = phi i8 [ -128, %bb.thread ], [ %tmp8, %bb ]		
	%tmp8 = add i8 %i.0.reg2mem.0, 1		
	%tmp1 = sext i8 %tmp8 to i32		
	%tmp3 = add i32 %tmp1, 128		
	%tmp4 = getelementptr [256 x i32], [256 x i32]* %a, i32 0, i32 %tmp3		
	store i32 0, i32* %tmp4
	%0 = icmp eq i8 %tmp8, 127		
	br i1 %0, label %return, label %bb

return:		
	ret void
}

define void @kinds__ubytezero([256 x i32]* nocapture %a) nounwind {
bb.thread:
	%tmp35 = getelementptr [256 x i32], [256 x i32]* %a, i32 0, i32 0		
	store i32 0, i32* %tmp35
	br label %bb

bb:		
	%i.0.reg2mem.0 = phi i8 [ 0, %bb.thread ], [ %tmp7, %bb ]		
	%tmp7 = add i8 %i.0.reg2mem.0, 1		
	%tmp1 = zext i8 %tmp7 to i32		
	%tmp3 = getelementptr [256 x i32], [256 x i32]* %a, i32 0, i32 %tmp1		
	store i32 0, i32* %tmp3
	%0 = icmp eq i8 %tmp7, -1		
	br i1 %0, label %return, label %bb

return:		
	ret void
}

define void @kinds__srangezero([21 x i32]* nocapture %a) nounwind {
bb.thread:
	br label %bb

bb:		
	%i.0.reg2mem.0 = phi i8 [ -10, %bb.thread ], [ %tmp7, %bb ]		
	%tmp12 = sext i8 %i.0.reg2mem.0 to i32		
	%tmp4 = add i32 %tmp12, 10		
	%tmp5 = getelementptr [21 x i32], [21 x i32]* %a, i32 0, i32 %tmp4		
	store i32 0, i32* %tmp5
	%tmp7 = add i8 %i.0.reg2mem.0, 1		
	%0 = icmp sgt i8 %tmp7, 10		
	br i1 %0, label %return, label %bb

return:		
	ret void
}

define void @kinds__urangezero([21 x i32]* nocapture %a) nounwind {
bb.thread:
	br label %bb

bb:		
	%i.0.reg2mem.0 = phi i8 [ 10, %bb.thread ], [ %tmp7, %bb ]		
	%tmp12 = sext i8 %i.0.reg2mem.0 to i32		
	%tmp4 = add i32 %tmp12, -10		
	%tmp5 = getelementptr [21 x i32], [21 x i32]* %a, i32 0, i32 %tmp4		
	store i32 0, i32* %tmp5
	%tmp7 = add i8 %i.0.reg2mem.0, 1		
	%0 = icmp sgt i8 %tmp7, 30		
	br i1 %0, label %return, label %bb

return:		
	ret void
}
