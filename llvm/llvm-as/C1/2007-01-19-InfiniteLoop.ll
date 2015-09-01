





@quant_coef = external global [6 x [4 x [4 x i32]]]		
@dequant_coef = external global [6 x [4 x [4 x i32]]]		
@A = external global [4 x [4 x i32]]		


define fastcc i32 @dct_luma_sp(i32 %block_x, i32 %block_y, i32* %coeff_cost) {
entry:




	%predicted_block = alloca [4 x [4 x i32]], align 4		
	br label %cond_next489

cond_next489:		
	%j.7.in = load i8, i8* null		
	%i.8.in = load i8, i8* null		
	%i.8 = zext i8 %i.8.in to i32		
	%j.7 = zext i8 %j.7.in to i32		
	%tmp495 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i32 %i.8, i32 %j.7		
	%tmp496 = load i32, i32* %tmp495		
	%tmp502 = load i32, i32* null		
	%tmp542 = getelementptr [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i32 0, i32 %i.8, i32 %j.7		
	%tmp543 = load i32, i32* %tmp542		
	%tmp548 = ashr i32 0, 0		
	%tmp561 = sub i32 0, %tmp496		
	%abscond563 = icmp sgt i32 %tmp561, -1		
	%abs564 = select i1 %abscond563, i32 %tmp561, i32 0		
	%tmp572 = mul i32 %abs564, %tmp543		
	%tmp574 = add i32 %tmp572, 0		
	%tmp576 = ashr i32 %tmp574, 0		
	%tmp579 = icmp eq i32 %tmp548, %tmp576		
	br i1 %tmp579, label %bb712, label %cond_next589

cond_next589:		
	%tmp605 = getelementptr [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i32 0, i32 %i.8, i32 %j.7		
	%tmp606 = load i32, i32* %tmp605		
	%tmp612 = load i32, i32* null		
	%tmp629 = load i32, i32* null		
	%tmp629a = sitofp i32 %tmp629 to double		
	%tmp631 = fmul double %tmp629a, 0.000000e+00		
	%tmp632 = fadd double 0.000000e+00, %tmp631		
	%tmp642 = call fastcc i32 @sign( i32 %tmp576, i32 %tmp561 )		
	%tmp650 = mul i32 %tmp606, %tmp642		
	%tmp656 = mul i32 %tmp650, %tmp612		
	%tmp658 = shl i32 %tmp656, 0		
	%tmp659 = ashr i32 %tmp658, 6		
	%tmp660 = sub i32 0, %tmp659		
	%tmp666 = sub i32 %tmp660, %tmp496		
	%tmp667 = sitofp i32 %tmp666 to double		
	call void @levrun_linfo_inter( i32 %tmp576, i32 0, i32* null, i32* null )
	%tmp671 = fmul double %tmp667, %tmp667		
	%tmp675 = fadd double %tmp671, 0.000000e+00		
	%tmp678 = fcmp oeq double %tmp632, %tmp675		
	br i1 %tmp678, label %cond_true679, label %cond_false693

cond_true679:		
	%abscond681 = icmp sgt i32 %tmp548, -1		
	%abs682 = select i1 %abscond681, i32 %tmp548, i32 0		
	%abscond684 = icmp sgt i32 %tmp576, -1		
	%abs685 = select i1 %abscond684, i32 %tmp576, i32 0		
	%tmp686 = icmp slt i32 %abs682, %abs685		
	br i1 %tmp686, label %cond_next702, label %cond_false689

cond_false689:		
	%tmp739 = icmp eq i32 %tmp576, 0		
	br i1 %tmp579, label %bb737, label %cond_false708

cond_false693:		
	ret i32 0

cond_next702:		
	ret i32 0

cond_false708:		
	ret i32 0

bb712:		
	ret i32 0

bb737:		
	br i1 %tmp739, label %cond_next791, label %cond_true740

cond_true740:		
	%tmp761 = call fastcc i32 @sign( i32 %tmp576, i32 0 )		
	%tmp780 = load i32, i32* null		
	%tmp785 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* @A, i32 0, i32 %i.8, i32 %j.7		
	%tmp786 = load i32, i32* %tmp785		
	%tmp781 = mul i32 %tmp780, %tmp761		
	%tmp787 = mul i32 %tmp781, %tmp786		
	%tmp789 = shl i32 %tmp787, 0		
	%tmp790 = ashr i32 %tmp789, 6		
	br label %cond_next791

cond_next791:		
	%ilev.1 = phi i32 [ %tmp790, %cond_true740 ], [ 0, %bb737 ]		
	%tmp796 = load i32, i32* %tmp495		
	%tmp798 = add i32 %tmp796, %ilev.1		
	%tmp812 = mul i32 0, %tmp502		
	%tmp818 = call fastcc i32 @sign( i32 0, i32 %tmp798 )		
	unreachable
}

declare i32 @sign(i32, i32)

declare void @levrun_linfo_inter(i32, i32, i32*, i32*)
