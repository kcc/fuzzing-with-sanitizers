





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n32:64"
@pow_2_tab = external constant [0 x float]		
@pow_2_025_tab = external constant [0 x float]		
@i_pow_2_tab = external constant [0 x float]		
@i_pow_2_025_tab = external constant [0 x float]		

define void @foo(i32 %gain, i32 %noOfLines, i32* %quaSpectrum, float* %iquaSpectrum, float* %pow4_3_tab_ptr) nounwind {
entry:
	%t0 = icmp slt i32 %gain, 0		
	br i1 %t0, label %bb1, label %bb2

bb1:		
	%t1 = sub i32 0, %gain		
	%t2 = sub i32 0, %gain		
	br label %bb2

bb2:		
	%pow_2_tab.pn = phi [0 x float]* [ @i_pow_2_tab, %bb1 ], [ @pow_2_tab, %entry ]		
	%.pn3.in.in = phi i32 [ %t1, %bb1 ], [ %gain, %entry ]		
	%pow_2_025_tab.pn = phi [0 x float]* [ @i_pow_2_025_tab, %bb1 ], [ @pow_2_025_tab, %entry ]		
	%.pn2.in.in = phi i32 [ %t2, %bb1 ], [ %gain, %entry ]		
	%.pn3.in = ashr i32 %.pn3.in.in, 2		
	%.pn2.in = and i32 %.pn2.in.in, 3		
	%.pn3 = sext i32 %.pn3.in to i64		
	%.pn2 = zext i32 %.pn2.in to i64		
	%.pn.in = getelementptr [0 x float], [0 x float]* %pow_2_tab.pn, i64 0, i64 %.pn3		
	%.pn1.in = getelementptr [0 x float], [0 x float]* %pow_2_025_tab.pn, i64 0, i64 %.pn2		
	%.pn = load float, float* %.pn.in		
	%.pn1 = load float, float* %.pn1.in		
	%invQuantizer.0 = fmul float %.pn, %.pn1		
	%t3 = ashr i32 %noOfLines, 2		
	%t4 = icmp sgt i32 %t3, 0		
	br i1 %t4, label %bb.nph, label %return

bb.nph:		
	%t5 = ashr i32 %noOfLines, 2		
	br label %bb3

bb3:		
	%i.05 = phi i32 [ %t49, %bb4 ], [ 0, %bb.nph ]		
	%k.04 = phi i32 [ %t48, %bb4 ], [ 0, %bb.nph ]		
	%t6 = sext i32 %i.05 to i64		
	%t7 = getelementptr i32, i32* %quaSpectrum, i64 %t6		
	%t8 = load i32, i32* %t7, align 4		
	%t9 = zext i32 %t8 to i64		
	%t10 = getelementptr float, float* %pow4_3_tab_ptr, i64 %t9		
	%t11 = load float, float* %t10, align 4		
	%t12 = or i32 %i.05, 1		
	%t13 = sext i32 %t12 to i64		
	%t14 = getelementptr i32, i32* %quaSpectrum, i64 %t13		
	%t15 = load i32, i32* %t14, align 4		
	%t16 = zext i32 %t15 to i64		
	%t17 = getelementptr float, float* %pow4_3_tab_ptr, i64 %t16		
	%t18 = load float, float* %t17, align 4		
	%t19 = or i32 %i.05, 2		
	%t20 = sext i32 %t19 to i64		
	%t21 = getelementptr i32, i32* %quaSpectrum, i64 %t20		
	%t22 = load i32, i32* %t21, align 4		
	%t23 = zext i32 %t22 to i64		
	%t24 = getelementptr float, float* %pow4_3_tab_ptr, i64 %t23		
	%t25 = load float, float* %t24, align 4		
	%t26 = or i32 %i.05, 3		
	%t27 = sext i32 %t26 to i64		
	%t28 = getelementptr i32, i32* %quaSpectrum, i64 %t27		
	%t29 = load i32, i32* %t28, align 4		
	%t30 = zext i32 %t29 to i64		
	%t31 = getelementptr float, float* %pow4_3_tab_ptr, i64 %t30		
	%t32 = load float, float* %t31, align 4		
	%t33 = fmul float %t11, %invQuantizer.0		
	%t34 = sext i32 %i.05 to i64		
	%t35 = getelementptr float, float* %iquaSpectrum, i64 %t34		
	store float %t33, float* %t35, align 4
	%t36 = or i32 %i.05, 1		
	%t37 = fmul float %t18, %invQuantizer.0		
	%t38 = sext i32 %t36 to i64		
	%t39 = getelementptr float, float* %iquaSpectrum, i64 %t38		
	store float %t37, float* %t39, align 4
	%t40 = or i32 %i.05, 2		
	%t41 = fmul float %t25, %invQuantizer.0		
	%t42 = sext i32 %t40 to i64		
	%t43 = getelementptr float, float* %iquaSpectrum, i64 %t42		
	store float %t41, float* %t43, align 4
	%t44 = or i32 %i.05, 3		
	%t45 = fmul float %t32, %invQuantizer.0		
	%t46 = sext i32 %t44 to i64		
	%t47 = getelementptr float, float* %iquaSpectrum, i64 %t46		
	store float %t45, float* %t47, align 4
	%t48 = add i32 %k.04, 1		
	%t49 = add i32 %i.05, 4		
	br label %bb4

bb4:		
	%t50 = icmp sgt i32 %t5, %t48		
	br i1 %t50, label %bb3, label %bb4.return_crit_edge

bb4.return_crit_edge:		
	br label %return

return:		
	ret void
}
