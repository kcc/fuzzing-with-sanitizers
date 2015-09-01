


@array = weak global [101 x i32] zeroinitializer, align 32		



define void @loop(i32 %x) {
entry:
	br label %bb

bb:		
	%i.01.0 = phi i32 [ 100, %entry ], [ %tmp4, %bb ]		
	%tmp1 = getelementptr [101 x i32], [101 x i32]* @array, i32 0, i32 %i.01.0		
	store i32 %x, i32* %tmp1
	%tmp4 = add i32 %i.01.0, -1		
	%tmp7 = icmp sgt i32 %tmp4, -1		
	br i1 %tmp7, label %bb, label %return

return:		
	ret void
}
