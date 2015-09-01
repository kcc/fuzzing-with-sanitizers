

@letters.3100 = external constant [63 x i8]		

define i32 @mkstemps(i8* %pattern, i32 %suffix_len, i64 %tmp42.rle) nounwind  {
bb20:
	br label %bb41

bb41:		
	%tmp8182 = trunc i64 %tmp42.rle to i32		
	%tmp83 = getelementptr [63 x i8], [63 x i8]* @letters.3100, i32 0, i32 %tmp8182		
	%tmp84 = load i8, i8* %tmp83, align 1		
	store i8 %tmp84, i8* null, align 1
	%tmp90 = urem i64 %tmp42.rle, 62		
	%tmp9091 = trunc i64 %tmp90 to i32		
	%tmp92 = getelementptr [63 x i8], [63 x i8]* @letters.3100, i32 0, i32 %tmp9091		
	store i8* %tmp92, i8** null, align 1
	ret i32 -1
}
