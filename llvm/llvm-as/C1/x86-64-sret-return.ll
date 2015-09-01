



%struct.foo = type { [4 x i64] }








define void @bar(%struct.foo* noalias sret  %agg.result, %struct.foo* %d) nounwind  {
entry:
	%d_addr = alloca %struct.foo*		
	%memtmp = alloca %struct.foo, align 8		
	%"alloca point" = bitcast i32 0 to i32		
	store %struct.foo* %d, %struct.foo** %d_addr
	%tmp = load %struct.foo*, %struct.foo** %d_addr, align 8		
	%tmp1 = getelementptr %struct.foo, %struct.foo* %agg.result, i32 0, i32 0		
	%tmp2 = getelementptr %struct.foo, %struct.foo* %tmp, i32 0, i32 0		
	%tmp3 = getelementptr [4 x i64], [4 x i64]* %tmp1, i32 0, i32 0		
	%tmp4 = getelementptr [4 x i64], [4 x i64]* %tmp2, i32 0, i32 0		
	%tmp5 = load i64, i64* %tmp4, align 8		
	store i64 %tmp5, i64* %tmp3, align 8
	%tmp6 = getelementptr [4 x i64], [4 x i64]* %tmp1, i32 0, i32 1		
	%tmp7 = getelementptr [4 x i64], [4 x i64]* %tmp2, i32 0, i32 1		
	%tmp8 = load i64, i64* %tmp7, align 8		
	store i64 %tmp8, i64* %tmp6, align 8
	%tmp9 = getelementptr [4 x i64], [4 x i64]* %tmp1, i32 0, i32 2		
	%tmp10 = getelementptr [4 x i64], [4 x i64]* %tmp2, i32 0, i32 2		
	%tmp11 = load i64, i64* %tmp10, align 8		
	store i64 %tmp11, i64* %tmp9, align 8
	%tmp12 = getelementptr [4 x i64], [4 x i64]* %tmp1, i32 0, i32 3		
	%tmp13 = getelementptr [4 x i64], [4 x i64]* %tmp2, i32 0, i32 3		
	%tmp14 = load i64, i64* %tmp13, align 8		
	store i64 %tmp14, i64* %tmp12, align 8
	%tmp15 = getelementptr %struct.foo, %struct.foo* %memtmp, i32 0, i32 0		
	%tmp16 = getelementptr %struct.foo, %struct.foo* %agg.result, i32 0, i32 0		
	%tmp17 = getelementptr [4 x i64], [4 x i64]* %tmp15, i32 0, i32 0		
	%tmp18 = getelementptr [4 x i64], [4 x i64]* %tmp16, i32 0, i32 0		
	%tmp19 = load i64, i64* %tmp18, align 8		
	store i64 %tmp19, i64* %tmp17, align 8
	%tmp20 = getelementptr [4 x i64], [4 x i64]* %tmp15, i32 0, i32 1		
	%tmp21 = getelementptr [4 x i64], [4 x i64]* %tmp16, i32 0, i32 1		
	%tmp22 = load i64, i64* %tmp21, align 8		
	store i64 %tmp22, i64* %tmp20, align 8
	%tmp23 = getelementptr [4 x i64], [4 x i64]* %tmp15, i32 0, i32 2		
	%tmp24 = getelementptr [4 x i64], [4 x i64]* %tmp16, i32 0, i32 2		
	%tmp25 = load i64, i64* %tmp24, align 8		
	store i64 %tmp25, i64* %tmp23, align 8
	%tmp26 = getelementptr [4 x i64], [4 x i64]* %tmp15, i32 0, i32 3		
	%tmp27 = getelementptr [4 x i64], [4 x i64]* %tmp16, i32 0, i32 3		
	%tmp28 = load i64, i64* %tmp27, align 8		
	store i64 %tmp28, i64* %tmp26, align 8
	br label %return

return:		
	ret void
}








define void @foo({ i64 }* noalias nocapture sret %agg.result) nounwind {
  store { i64 } { i64 0 }, { i64 }* %agg.result
  ret void
}
