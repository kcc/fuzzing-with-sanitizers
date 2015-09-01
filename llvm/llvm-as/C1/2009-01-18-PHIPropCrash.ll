



define i32 @func_105(i1 %tmp5, i1 %tmp7) nounwind {
BB:
	br i1 true, label %BB2, label %BB1

BB1:		
	br label %BB2

BB2:		
	%tmp3 = phi i1 [ true, %BB ], [ false, %BB1 ]		
	br label %BB9

BB9:		
	%tmp10 = phi i32 [ 0, %BB2 ], [ %tmp12, %BB11 ]		
	br i1 %tmp5, label %BB11, label %BB13

BB11:		
	%tmp12 = phi i32 [ 0, %BB13 ], [ %tmp10, %BB9 ]		
	br i1 %tmp3, label %BB9, label %BB20

BB13:		
	%tmp14 = phi i32 [ 0, %BB9 ], [ %tmp14, %BB13 ]		
	br i1 %tmp7, label %BB13, label %BB11

BB20:		
	ret i32 %tmp12
}
