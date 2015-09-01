


define i32 @test(float ** %tmp2, i32 %tmp12) nounwind {





	%tmp3 = load float*, float** %tmp2
	%tmp132 = shl i32 %tmp12, 2		
	%tmp4 = bitcast float* %tmp3 to i8*		
	%ctg2 = getelementptr i8, i8* %tmp4, i32 %tmp132		
	%tmp6 = ptrtoint i8* %ctg2 to i32		
	%tmp14 = or i32 %tmp6, 1		
	ret i32 %tmp14
}


define i32 @test2(i32 %a, i32 %b) nounwind {





	%c = shl i32 %a, 3
	%d = or i32 %c, 3
	ret i32 %d
}
