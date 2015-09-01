


define void @foo(i8** %buf, i32 %size, i32 %col, i8* %p) nounwind {
entry:






	icmp sgt i32 %size, 0		
	br i1 %0, label %bb.preheader, label %return

bb.preheader:		
	%tmp5.sum72 = add i32 %col, 7		
	%tmp5.sum71 = add i32 %col, 5		
	%tmp5.sum70 = add i32 %col, 3		
	%tmp5.sum69 = add i32 %col, 2		
	%tmp5.sum68 = add i32 %col, 1		
	%tmp5.sum66 = add i32 %col, 4		
	%tmp5.sum = add i32 %col, 6		
	br label %bb

bb:		
	%i.073.0 = phi i32 [ 0, %bb.preheader ], [ %indvar.next, %bb ]		
	%p_addr.076.0.rec = mul i32 %i.073.0, 9		
	%p_addr.076.0 = getelementptr i8, i8* %p, i32 %p_addr.076.0.rec		
	%tmp2 = getelementptr i8*, i8** %buf, i32 %i.073.0		
	%tmp3 = load i8*, i8** %tmp2		
	%tmp5 = getelementptr i8, i8* %tmp3, i32 %col		
	%tmp7 = load i8, i8* %p_addr.076.0		
	store i8 %tmp7, i8* %tmp5
	%p_addr.076.0.sum93 = add i32 %p_addr.076.0.rec, 1		
	%tmp11 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum93		
	%tmp13 = load i8, i8* %tmp11		
	%tmp15 = getelementptr i8, i8* %tmp3, i32 %tmp5.sum72		
	store i8 %tmp13, i8* %tmp15
	%p_addr.076.0.sum92 = add i32 %p_addr.076.0.rec, 2		
	%tmp17 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum92		
	%tmp19 = load i8, i8* %tmp17		
	%tmp21 = getelementptr i8, i8* %tmp3, i32 %tmp5.sum71		
	store i8 %tmp19, i8* %tmp21
	%p_addr.076.0.sum91 = add i32 %p_addr.076.0.rec, 3		
	%tmp23 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum91		
	%tmp25 = load i8, i8* %tmp23		
	%tmp27 = getelementptr i8, i8* %tmp3, i32 %tmp5.sum70		
	store i8 %tmp25, i8* %tmp27
	%p_addr.076.0.sum90 = add i32 %p_addr.076.0.rec, 4		
	%tmp29 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum90		
	%tmp31 = load i8, i8* %tmp29		
	%tmp33 = getelementptr i8, i8* %tmp3, i32 %tmp5.sum69		
	store i8 %tmp31, i8* %tmp33
	%p_addr.076.0.sum89 = add i32 %p_addr.076.0.rec, 5		
	%tmp35 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum89		
	%tmp37 = load i8, i8* %tmp35		
	%tmp39 = getelementptr i8, i8* %tmp3, i32 %tmp5.sum68		
	store i8 %tmp37, i8* %tmp39
	%p_addr.076.0.sum88 = add i32 %p_addr.076.0.rec, 6		
	%tmp41 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum88		
	%tmp43 = load i8, i8* %tmp41		
	store i8 %tmp43, i8* %tmp33
	%p_addr.076.0.sum87 = add i32 %p_addr.076.0.rec, 7		
	%tmp47 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum87		
	%tmp49 = load i8, i8* %tmp47		
	%tmp51 = getelementptr i8, i8* %tmp3, i32 %tmp5.sum66		
	store i8 %tmp49, i8* %tmp51
	%p_addr.076.0.sum = add i32 %p_addr.076.0.rec, 8		
	%tmp53 = getelementptr i8, i8* %p, i32 %p_addr.076.0.sum		
	%tmp55 = load i8, i8* %tmp53		
	%tmp57 = getelementptr i8, i8* %tmp3, i32 %tmp5.sum		
	store i8 %tmp55, i8* %tmp57
	%indvar.next = add i32 %i.073.0, 1		
	icmp eq i32 %indvar.next, %size		
	br i1 %1, label %return, label %bb

return:		
	ret void
}
