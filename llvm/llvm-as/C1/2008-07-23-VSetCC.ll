


define void @entry(i32 %m_task_id, i32 %start_x, i32 %end_x) nounwind  {
	br i1 false, label %bb.nph, label %._crit_edge

bb.nph:		
	%X = icmp sgt <4 x i32> zeroinitializer, < i32 -128, i32 -128, i32 -128, i32 -128 >		
        sext <4 x i1> %X to <4 x i32>
	extractelement <4 x i32> %1, i32 3		
	lshr i32 %2, 31		
	trunc i32 %3 to i1		
	select i1 %4, i32 -1, i32 0		
	insertelement <4 x i32> zeroinitializer, i32 %5, i32 3		
	and <4 x i32> zeroinitializer, %6		
	bitcast <4 x i32> %7 to <4 x float>		
	fmul <4 x float> zeroinitializer, %8		
	bitcast <4 x float> %9 to <4 x i32>		
	or <4 x i32> %10, zeroinitializer		
	bitcast <4 x i32> %11 to <4 x float>		
	fmul <4 x float> %12, < float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02 >		
	fsub <4 x float> %13, < float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02 >		
	extractelement <4 x float> %14, i32 3		
	call float @fmaxf( float 0.000000e+00, float %15 )		
	br label %bb.nph

._crit_edge:		
	ret void
}


declare float @fmaxf(float, float)
