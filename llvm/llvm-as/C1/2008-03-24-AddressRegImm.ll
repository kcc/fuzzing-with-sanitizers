

define fastcc i8* @page_rec_get_next(i8* %rec) nounwind  {
entry:
	%tmp2627 = ptrtoint i8* %rec to i64		
	%tmp28 = and i64 %tmp2627, -16384		
	%tmp2829 = inttoptr i64 %tmp28 to i8*		
	%tmp37 = getelementptr i8, i8* %tmp2829, i64 42		
	%tmp40 = load i8, i8* %tmp37, align 1		
	%tmp4041 = zext i8 %tmp40 to i64		
	%tmp42 = shl i64 %tmp4041, 8		
	%tmp47 = add i64 %tmp42, 0		
	%tmp52 = and i64 %tmp47, 32768		
	%tmp72 = icmp eq i64 %tmp52, 0		
	br i1 %tmp72, label %bb91, label %bb
bb:		
	ret i8* null
bb91:		
	br i1 false, label %bb100, label %bb185
bb100:		
	%tmp106 = sub i64 %tmp2627, %tmp28		
	ret i8* null
bb185:		
	ret i8* null
}
