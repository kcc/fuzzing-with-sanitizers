








@A = internal global [16 x [16 x i32]] zeroinitializer, align 32		

define void @test(i32 %row, i32 %N.in) nounwind {
entry:
	%N = bitcast i32 %N.in to i32		
	%tmp5 = icmp sgt i32 %N.in, 0		
	br i1 %tmp5, label %cond_true, label %return

cond_true:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %cond_true ]		
	%i.0.0 = bitcast i32 %indvar to i32		
	%tmp2 = add i32 %i.0.0, 1		
	%tmp = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @A, i32 0, i32 %row, i32 %tmp2		
	store i32 4, i32* %tmp
	%tmp5.upgrd.1 = add i32 %i.0.0, 2		
	%tmp7 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @A, i32 0, i32 %row, i32 %tmp5.upgrd.1		
	store i32 5, i32* %tmp7
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp eq i32 %indvar.next, %N		
	br i1 %exitcond, label %return, label %cond_true

return:		
	ret void
}
