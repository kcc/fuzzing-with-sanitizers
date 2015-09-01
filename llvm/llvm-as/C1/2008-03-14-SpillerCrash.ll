


	%struct.__locale_struct = type { [13 x %struct.locale_data*], i16*, i32*, i32*, [13 x i8*] }
	%struct.anon = type { i8* }
	%struct.locale_data = type { i8*, i8*, i32, i32, { void (%struct.locale_data*)*, %struct.anon }, i32, i32, i32, [0 x %struct.locale_data_value] }
	%struct.locale_data_value = type { i32* }

@wcstoll_l = alias i64 (i32*, i32**, i32, %struct.__locale_struct*)* @__wcstoll_l

define i64 @____wcstoll_l_internal(i32* %nptr, i32** %endptr, i32 %base, i32 %group, %struct.__locale_struct* %loc) nounwind  {
entry:
	%tmp27 = load i32, i32* null, align 4		
	%tmp83 = getelementptr i32, i32* %nptr, i32 1		
	%tmp233 = add i32 0, -48		
	br label %bb271.us
bb271.us:		
	br label %bb374.outer
bb311.split:		
	%tmp313 = add i32 %tmp378.us, -48		
	br i1 false, label %bb374.outer, label %bb383
bb327.split:		
	ret i64 0
bb374.outer:		
	%tmp370371552.pn.in = phi i32 [ %tmp233, %bb271.us ], [ %tmp313, %bb311.split ]		
	%tmp278279.pn = phi i64 [ 0, %bb271.us ], [ %tmp373.reg2mem.0.ph, %bb311.split ]		
	%s.5.ph = phi i32* [ null, %bb271.us ], [ %tmp376.us, %bb311.split ]		
	%tmp366367550.pn = sext i32 %base to i64		
	%tmp370371552.pn = zext i32 %tmp370371552.pn.in to i64		
	%tmp369551.pn = mul i64 %tmp278279.pn, %tmp366367550.pn		
	%tmp373.reg2mem.0.ph = add i64 %tmp370371552.pn, %tmp369551.pn		
	br label %bb374.us
bb374.us:		
	%tmp376.us = getelementptr i32, i32* %s.5.ph, i32 0		
	%tmp378.us = load i32, i32* %tmp376.us, align 4		
	%tmp302.us = icmp eq i32* %tmp376.us, %tmp83		
	%bothcond484.us = or i1 false, %tmp302.us		
	br i1 %bothcond484.us, label %bb383, label %bb305.us
bb305.us:		
	br i1 false, label %bb311.split, label %bb314.us
bb314.us:		
	%tmp320.us = icmp eq i32 %tmp378.us, %tmp27		
	br i1 %tmp320.us, label %bb374.us, label %bb327.split
bb383:		
	ret i64 0
}

define i64 @__wcstoll_l(i32*, i32**, i32, %struct.__locale_struct*) nounwind {
  ret i64 0
}
