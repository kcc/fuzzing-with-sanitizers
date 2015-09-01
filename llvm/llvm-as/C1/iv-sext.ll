





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n32:64"

define void @t(float* %pTmp1, float* %peakWeight, float* %nrgReducePeakrate, i32 %bandEdgeIndex, float %tmp1) nounwind {
entry:
	%tmp = load float, float* %peakWeight, align 4		
	%tmp2 = icmp sgt i32 %bandEdgeIndex, 0		
	br i1 %tmp2, label %bb.nph22, label %return

bb.nph22:		
	%tmp3 = add i32 %bandEdgeIndex, -1		
	br label %bb




bb:		
	%distERBhi.121 = phi float [ %distERBhi.2.lcssa, %bb8 ], [ 0.000000e+00, %bb.nph22 ]		
	%distERBlo.120 = phi float [ %distERBlo.0.lcssa, %bb8 ], [ 0.000000e+00, %bb.nph22 ]		
	%hiPart.119 = phi i32 [ %hiPart.0.lcssa, %bb8 ], [ 0, %bb.nph22 ]		
	%loPart.118 = phi i32 [ %loPart.0.lcssa, %bb8 ], [ 0, %bb.nph22 ]		
	%peakCount.117 = phi float [ %peakCount.2.lcssa, %bb8 ], [ %tmp, %bb.nph22 ]		
	%part.016 = phi i32 [ %tmp46, %bb8 ], [ 0, %bb.nph22 ]		
	%tmp4 = icmp sgt i32 %part.016, 0		
	br i1 %tmp4, label %bb1, label %bb3.preheader


bb1:		
	%tmp5 = add i32 %part.016, -1		
	%tmp6 = sext i32 %tmp5 to i64		
	%tmp7 = getelementptr float, float* %pTmp1, i64 %tmp6		
	%tmp8 = load float, float* %tmp7, align 4		
	%tmp9 = fadd float %tmp8, %distERBlo.120		
	%tmp10 = add i32 %part.016, -1		
	%tmp11 = sext i32 %tmp10 to i64		
	%tmp12 = getelementptr float, float* %pTmp1, i64 %tmp11		
	%tmp13 = load float, float* %tmp12, align 4		
	%tmp14 = fsub float %distERBhi.121, %tmp13		
	br label %bb3.preheader

bb3.preheader:		
	%distERBlo.0.ph = phi float [ %distERBlo.120, %bb ], [ %tmp9, %bb1 ]		
	%distERBhi.0.ph = phi float [ %distERBhi.121, %bb ], [ %tmp14, %bb1 ]		
	%tmp15 = fcmp ogt float %distERBlo.0.ph, 2.500000e+00		
	br i1 %tmp15, label %bb.nph, label %bb5.preheader

bb.nph:		
	br label %bb2

bb2:		
	%distERBlo.03 = phi float [ %tmp19, %bb3 ], [ %distERBlo.0.ph, %bb.nph ]		
	%loPart.02 = phi i32 [ %tmp24, %bb3 ], [ %loPart.118, %bb.nph ]		
	%peakCount.01 = phi float [ %tmp23, %bb3 ], [ %peakCount.117, %bb.nph ]		
	%tmp16 = sext i32 %loPart.02 to i64		
	%tmp17 = getelementptr float, float* %pTmp1, i64 %tmp16		
	%tmp18 = load float, float* %tmp17, align 4		
	%tmp19 = fsub float %distERBlo.03, %tmp18		
	%tmp20 = sext i32 %loPart.02 to i64		
	%tmp21 = getelementptr float, float* %peakWeight, i64 %tmp20		
	%tmp22 = load float, float* %tmp21, align 4		
	%tmp23 = fsub float %peakCount.01, %tmp22		
	%tmp24 = add i32 %loPart.02, 1		
	br label %bb3

bb3:		
	%tmp25 = fcmp ogt float %tmp19, 2.500000e+00		
	br i1 %tmp25, label %bb2, label %bb3.bb5.preheader_crit_edge

bb3.bb5.preheader_crit_edge:		
	%tmp24.lcssa = phi i32 [ %tmp24, %bb3 ]		
	%tmp23.lcssa = phi float [ %tmp23, %bb3 ]		
	%tmp19.lcssa = phi float [ %tmp19, %bb3 ]		
	br label %bb5.preheader

bb5.preheader:		
	%distERBlo.0.lcssa = phi float [ %tmp19.lcssa, %bb3.bb5.preheader_crit_edge ], [ %distERBlo.0.ph, %bb3.preheader ]		
	%loPart.0.lcssa = phi i32 [ %tmp24.lcssa, %bb3.bb5.preheader_crit_edge ], [ %loPart.118, %bb3.preheader ]		
	%peakCount.0.lcssa = phi float [ %tmp23.lcssa, %bb3.bb5.preheader_crit_edge ], [ %peakCount.117, %bb3.preheader ]		
	%.not10 = fcmp olt float %distERBhi.0.ph, 2.500000e+00		
	%tmp26 = icmp sgt i32 %tmp3, %hiPart.119		
	%or.cond11 = and i1 %tmp26, %.not10		
	br i1 %or.cond11, label %bb.nph12, label %bb7

bb.nph12:		
	br label %bb4




bb4:		
	%distERBhi.29 = phi float [ %tmp30, %bb5 ], [ %distERBhi.0.ph, %bb.nph12 ]		
	%hiPart.08 = phi i32 [ %tmp31, %bb5 ], [ %hiPart.119, %bb.nph12 ]		
	%peakCount.27 = phi float [ %tmp35, %bb5 ], [ %peakCount.0.lcssa, %bb.nph12 ]		
	%tmp27 = sext i32 %hiPart.08 to i64		
	%tmp28 = getelementptr float, float* %pTmp1, i64 %tmp27		
	%tmp29 = load float, float* %tmp28, align 4		
	%tmp30 = fadd float %tmp29, %distERBhi.29		
	%tmp31 = add i32 %hiPart.08, 1		
	%tmp32 = sext i32 %tmp31 to i64		
	%tmp33 = getelementptr float, float* %peakWeight, i64 %tmp32		
	%tmp34 = load float, float* %tmp33, align 4		
	%tmp35 = fadd float %tmp34, %peakCount.27		
	br label %bb5


bb5:		
	%.not = fcmp olt float %tmp30, 2.500000e+00		
	%tmp36 = icmp sgt i32 %tmp3, %tmp31		
	%or.cond = and i1 %tmp36, %.not		
	br i1 %or.cond, label %bb4, label %bb5.bb7_crit_edge

bb5.bb7_crit_edge:		
	%tmp35.lcssa = phi float [ %tmp35, %bb5 ]		
	%tmp31.lcssa = phi i32 [ %tmp31, %bb5 ]		
	%tmp30.lcssa = phi float [ %tmp30, %bb5 ]		
	br label %bb7

bb7:		
	%distERBhi.2.lcssa = phi float [ %tmp30.lcssa, %bb5.bb7_crit_edge ], [ %distERBhi.0.ph, %bb5.preheader ]		
	%hiPart.0.lcssa = phi i32 [ %tmp31.lcssa, %bb5.bb7_crit_edge ], [ %hiPart.119, %bb5.preheader ]		
	%peakCount.2.lcssa = phi float [ %tmp35.lcssa, %bb5.bb7_crit_edge ], [ %peakCount.0.lcssa, %bb5.preheader ]		
	%tmp37 = fadd float %distERBlo.0.lcssa, %distERBhi.2.lcssa		
	%tmp38 = fdiv float %peakCount.2.lcssa, %tmp37		
	%tmp39 = fmul float %tmp38, %tmp1		
	%tmp40 = fmul float %tmp39, %tmp39		
	%tmp41 = fmul float %tmp40, %tmp40		
	%tmp42 = fadd float %tmp41, 1.000000e+00		
	%tmp43 = fdiv float 1.000000e+00, %tmp42		
	%tmp44 = sext i32 %part.016 to i64		
	%tmp45 = getelementptr float, float* %nrgReducePeakrate, i64 %tmp44		
	store float %tmp43, float* %tmp45, align 4
	%tmp46 = add i32 %part.016, 1		
	br label %bb8

bb8:		
	%tmp47 = icmp slt i32 %tmp46, %bandEdgeIndex		
	br i1 %tmp47, label %bb, label %bb8.return_crit_edge

bb8.return_crit_edge:		
	br label %return

return:		
	ret void
}
