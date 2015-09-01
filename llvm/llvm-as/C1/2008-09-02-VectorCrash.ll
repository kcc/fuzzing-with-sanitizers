

define void @entry(i32 %m_task_id, i32 %start_x, i32 %end_x, i32 %start_y, i32 %end_y) {
	br label %1


	%2 = icmp slt i32 0, %end_y		
	br i1 %2, label %4, label %3


	ret void


	%5 = icmp slt i32 0, %end_x		
	br i1 %5, label %6, label %1


	%7 = srem <2 x i32> zeroinitializer, zeroinitializer		
	%8 = extractelement <2 x i32> %7, i32 1		
	%9 = select i1 false, i32 0, i32 %8		
	%10 = insertelement <2 x i32> zeroinitializer, i32 %9, i32 1		
	%11 = extractelement <2 x i32> %10, i32 1		
	%12 = insertelement <4 x i32> zeroinitializer, i32 %11, i32 3		
	%13 = sitofp <4 x i32> %12 to <4 x float>		
	store <4 x float> %13, <4 x float>* null
	br label %4
}
